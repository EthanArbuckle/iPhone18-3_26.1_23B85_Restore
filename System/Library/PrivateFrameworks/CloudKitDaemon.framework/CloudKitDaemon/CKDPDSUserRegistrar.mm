@interface CKDPDSUserRegistrar
- (BOOL)ensureRegistrationPresent:(id)present error:(id *)error;
- (BOOL)removeAllRegistrations:(id *)registrations;
- (BOOL)removeRegistration:(id)registration error:(id *)error;
- (CKDPDSUserRegistrar)initWithRegistrar:(id)registrar user:(id)user;
- (id)_cacheKeyForRegistration:(id)registration;
@end

@implementation CKDPDSUserRegistrar

- (CKDPDSUserRegistrar)initWithRegistrar:(id)registrar user:(id)user
{
  registrarCopy = registrar;
  userCopy = user;
  v21.receiver = self;
  v21.super_class = CKDPDSUserRegistrar;
  v9 = [(CKDPDSUserRegistrar *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_registrar, registrar);
    objc_storeStrong(&v10->_user, user);
    v11 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v10->_cache;
    v10->_cache = v11;

    v13 = MEMORY[0x277CCACA8];
    v16 = objc_msgSend_hash(userCopy, v14, v15);
    v18 = objc_msgSend_stringWithFormat_(v13, v17, @"com.apple.cloudkit.PDS.%tu", v16);
    objc_msgSend_setName_(v10->_cache, v19, v18);
  }

  return v10;
}

- (id)_cacheKeyForRegistration:(id)registration
{
  v3 = MEMORY[0x277CCACA8];
  registrationCopy = registration;
  v7 = objc_msgSend_pushEnvironment(registrationCopy, v5, v6);
  v10 = objc_msgSend_topicString(registrationCopy, v8, v9);
  v13 = objc_msgSend_qualifierString(registrationCopy, v11, v12);

  v15 = objc_msgSend_stringWithFormat_(v3, v14, @"%hhd:%@:%@", v7, v10, v13);

  return v15;
}

- (BOOL)ensureRegistrationPresent:(id)present error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_msgSend__cacheKeyForRegistration_(selfCopy, v8, presentCopy);
  v12 = objc_msgSend_cache(selfCopy, v10, v11);
  v14 = objc_msgSend_objectForKey_(v12, v13, v9);

  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    v18 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = presentCopy;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Not adding registration to PDS, as PDS is already aware of %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_19;
  }

  v20 = objc_msgSend_registrar(selfCopy, v15, v16);
  v23 = objc_msgSend_user(selfCopy, v21, v22);
  v36 = 0;
  v18 = objc_msgSend_ensureRegistrationPresent_forUser_error_(v20, v24, presentCopy, v23, &v36);
  v19 = v36;

  v25 = *MEMORY[0x277CBC878];
  v26 = *MEMORY[0x277CBC880];
  if (v18)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v25);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = presentCopy;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Added registration to PDS: %@", buf, 0xCu);
    }

    v30 = objc_msgSend_cache(selfCopy, v28, v29);
    objc_msgSend_setObject_forKey_(v30, v31, presentCopy, v9);

    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v25);
  }

  v32 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  *buf = 138412546;
  v38 = presentCopy;
  v39 = 2112;
  v40 = v19;
  _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Unable to add registration to PDS: %@ %@", buf, 0x16u);
  if (!error)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v19)
  {
    v33 = v19;
    *error = v19;
  }

LABEL_19:

  objc_sync_exit(selfCopy);
  v34 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)removeRegistration:(id)registration error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_registrar(selfCopy, v8, v9);
  v13 = objc_msgSend_user(selfCopy, v11, v12);
  v30 = 0;
  v15 = objc_msgSend_removeRegistration_fromUser_error_(v10, v14, registrationCopy, v13, &v30);
  v16 = v30;

  v17 = *MEMORY[0x277CBC878];
  v18 = *MEMORY[0x277CBC880];
  if (v15)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v17);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = registrationCopy;
      _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Removed registration from PDS: %@", buf, 0xCu);
    }

    v22 = objc_msgSend_cache(selfCopy, v20, v21);
    v24 = objc_msgSend__cacheKeyForRegistration_(selfCopy, v23, registrationCopy);
    objc_msgSend_removeObjectForKey_(v22, v25, v24);

    goto LABEL_10;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v17);
  }

  v26 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
LABEL_10:
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  *buf = 138412546;
  v32 = registrationCopy;
  v33 = 2112;
  v34 = v16;
  _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Unable to remove registration from PDS: %@ %@", buf, 0x16u);
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v16)
  {
    v27 = v16;
    *error = v16;
  }

LABEL_13:

  objc_sync_exit(selfCopy);
  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeAllRegistrations:(id *)registrations
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_registrar(selfCopy, v5, v6);
  v10 = objc_msgSend_user(selfCopy, v8, v9);
  v29 = 0;
  v12 = objc_msgSend_removeAllRegistrationsFromUser_error_(v7, v11, v10, &v29);
  v13 = v29;

  v14 = *MEMORY[0x277CBC878];
  v15 = *MEMORY[0x277CBC880];
  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_user(selfCopy, v17, v18);
      *buf = 138412290;
      v31 = v19;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Removed all registrations for account %@ from PDS", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v13;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Unable to remove all registrations from PDS: %@", buf, 0xCu);
    }
  }

  v23 = objc_msgSend_cache(selfCopy, v20, v21);
  objc_msgSend_removeAllObjects(v23, v24, v25);

  if (registrations && v13)
  {
    v26 = v13;
    *registrations = v13;
  }

  objc_sync_exit(selfCopy);
  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

@end