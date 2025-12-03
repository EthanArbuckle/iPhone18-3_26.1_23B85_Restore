@interface PDSRegistrar
- (BOOL)addRegistration:(id)registration toUser:(id)user error:(id *)error;
- (BOOL)batchUpdateRegistrations:(id)registrations forUser:(id)user error:(id *)error;
- (BOOL)deleteRegistration:(id)registration fromUser:(id)user error:(id *)error;
- (BOOL)ensureRegistrationPresent:(id)present forUser:(id)user error:(id *)error;
- (BOOL)removeAllRegistrationsFromUser:(id)user error:(id *)error;
- (BOOL)removeRegistration:(id)registration fromUser:(id)user error:(id *)error;
- (PDSRegistrar)initWithClientID:(id)d error:(id *)error;
- (id)_activeRegistrationsFromEntries:(id)entries;
- (id)_registrationsFromEntries:(id)entries;
- (id)_wrappedErrorForFailedRemote:(id)remote;
- (id)_wrappedErrorForGivenError:(id)error XPCError:(id)cError;
- (id)activeUsersWithError:(id *)error;
- (id)allEntriesWithError:(id *)error;
- (id)allRegistrationsForUser:(id)user error:(id *)error;
- (id)allRegistrationsWithError:(id *)error;
- (id)currentRegistrationsForUser:(id)user error:(id *)error;
- (id)usersWithError:(id *)error;
- (void)activeUsersWithCompletion:(id)completion;
- (void)allEntriesWithCompletion:(id)completion;
- (void)allRegistrationsForUser:(id)user completion:(id)completion;
- (void)allRegistrationsWithCompletion:(id)completion;
- (void)currentRegistrationsForUser:(id)user completion:(id)completion;
- (void)usersWithCompletion:(id)completion;
@end

@implementation PDSRegistrar

- (PDSRegistrar)initWithClientID:(id)d error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    [PDSRegistrar initWithClientID:error:];
  }

  v28.receiver = self;
  v28.super_class = PDSRegistrar;
  v8 = [(PDSRegistrar *)&v28 init];
  if (v8)
  {
    v9 = [PDSRemoteRegistry remoteVendorForClientID:dCopy];
    remoteVendor = v8->_remoteVendor;
    v8->_remoteVendor = v9;

    objc_storeStrong(&v8->_clientID, d);
    v11 = pds_defaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_25DECA000, v11, OS_LOG_TYPE_DEFAULT, "PDSRegistrar create {self: %@}", buf, 0xCu);
    }

    v12 = v8->_remoteVendor;
    v27 = 0;
    v13 = [(PDSRemoteVendor *)v12 validateConnectionWithError:&v27];
    v14 = v27;
    v15 = v14;
    if (v13)
    {
      v16 = 0;
    }

    else
    {
      if (v14)
      {
        v35 = *MEMORY[0x277CCA7E8];
        v36[0] = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      }

      else
      {
        v17 = 0;
      }

      domain = [v15 domain];
      v19 = [domain isEqualToString:PDSXPCErrorDomain];

      if (v19)
      {
        v20 = -200;
      }

      else
      {
        v20 = -201;
      }

      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:PDSRegistrarErrorDomain code:v20 userInfo:v17];
      v16 = v21;
      if (error)
      {
        v22 = v21;
        *error = v16;
      }

      v8 = 0;
    }

    v23 = pds_defaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = "NO";
      *buf = 138412802;
      v30 = v8;
      if (v13)
      {
        v24 = "YES";
      }

      v31 = 2080;
      v32 = v24;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_25DECA000, v23, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed validation {self: %@, connected: %s, error: %@}", buf, 0x20u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)addRegistration:(id)registration toUser:(id)user error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  userCopy = user;
  if (!registrationCopy)
  {
    [PDSRegistrar addRegistration:toUser:error:];
  }

  if (!userCopy)
  {
    [PDSRegistrar addRegistration:toUser:error:];
  }

  v10 = pds_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = registrationCopy;
    *&buf[12] = 2112;
    *&buf[14] = userCopy;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v10, OS_LOG_TYPE_DEFAULT, "PDSRegistrar addRegistration %@ for user %@ {self: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  remoteVendor = self->_remoteVendor;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __45__PDSRegistrar_addRegistration_toUser_error___block_invoke;
  v31[3] = &unk_2799F78D0;
  v31[4] = buf;
  v12 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v31];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  if (v12)
  {
    v13 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v15 = [(PDSEntry *)v13 initWithUser:userCopy registration:registrationCopy clientID:clientID];

    v16 = [MEMORY[0x277CBEB98] setWithObject:v15];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__PDSRegistrar_addRegistration_toUser_error___block_invoke_2;
    v24[3] = &unk_2799F78D0;
    v24[4] = &v25;
    [v12 storeEntries:v16 deleteEntries:0 withCompletion:v24];

    v17 = v26[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v17 XPCError:*(*&buf[8] + 40)];
  v19 = v18;
  if (error && v18)
  {
    v20 = v18;
    *error = v19;
  }

  v21 = pds_defaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 138412546;
    selfCopy2 = self;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_25DECA000, v21, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed addRegistration {self: %@, overallError: %@}", v32, 0x16u);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (BOOL)ensureRegistrationPresent:(id)present forUser:(id)user error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  userCopy = user;
  if (!presentCopy)
  {
    [PDSRegistrar ensureRegistrationPresent:forUser:error:];
  }

  if (!userCopy)
  {
    [PDSRegistrar ensureRegistrationPresent:forUser:error:];
  }

  v10 = pds_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = presentCopy;
    *&buf[12] = 2112;
    *&buf[14] = userCopy;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v10, OS_LOG_TYPE_DEFAULT, "PDSRegistrar ensureRegistrationPresent %@ for user %@ {self: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  remoteVendor = self->_remoteVendor;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __56__PDSRegistrar_ensureRegistrationPresent_forUser_error___block_invoke;
  v36[3] = &unk_2799F78D0;
  v36[4] = buf;
  v12 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v36];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  if (v12)
  {
    v13 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v15 = [(PDSEntry *)v13 initWithUser:userCopy registration:presentCopy clientID:clientID];

    v16 = [MEMORY[0x277CBEB98] setWithObject:v15];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __56__PDSRegistrar_ensureRegistrationPresent_forUser_error___block_invoke_2;
    v29[3] = &unk_2799F78D0;
    v29[4] = &v30;
    [v12 storeEntries:v16 deleteEntries:0 withCompletion:v29];

    v17 = v31[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v17 XPCError:*(*&buf[8] + 40)];
  v19 = v18;
  if (v18)
  {
    userInfo = [v18 userInfo];
    v21 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    if (v21)
    {
      domain = [v21 domain];
      v23 = [domain isEqualToString:PDSCDCacheErrorDomain];

      if (v23)
      {
        code = [v21 code];
        if (code == -402 || code == -400)
        {

          v19 = 0;
        }
      }
    }

    if (error)
    {
      v25 = v19;
      *error = v19;
    }
  }

  v26 = pds_defaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138412546;
    selfCopy2 = self;
    v39 = 2112;
    v40 = v19;
    _os_log_impl(&dword_25DECA000, v26, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed ensureRegistrationPresent {self: %@, overallError: %@}", v37, 0x16u);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);

  v27 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (BOOL)batchUpdateRegistrations:(id)registrations forUser:(id)user error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  registrationsCopy = registrations;
  userCopy = user;
  v32 = registrationsCopy;
  if (!registrationsCopy)
  {
    v29 = userCopy;
    [PDSRegistrar batchUpdateRegistrations:forUser:error:];
    userCopy = v29;
  }

  v33 = userCopy;
  if (!userCopy)
  {
    [PDSRegistrar batchUpdateRegistrations:forUser:error:];
  }

  v9 = pds_defaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v9, OS_LOG_TYPE_DEFAULT, "PDSRegistrar batchUpdateRegistrations {self: %@}", &buf, 0xCu);
  }

  v10 = pds_oversizedLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v32;
    _os_log_impl(&dword_25DECA000, v10, OS_LOG_TYPE_DEFAULT, "Batch Registrations: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__0;
  v54 = __Block_byref_object_dispose__0;
  v55 = 0;
  remoteVendor = self->_remoteVendor;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __55__PDSRegistrar_batchUpdateRegistrations_forUser_error___block_invoke;
  v45[3] = &unk_2799F78D0;
  v45[4] = &buf;
  [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v45];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v31 = v44 = 0;
  if (v31)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v32;
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v50 count:16];
    if (v14)
    {
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = [PDSEntry alloc];
          clientID = [(PDSRegistrar *)self clientID];
          v20 = [(PDSEntry *)v18 initWithUser:v33 registration:v17 clientID:clientID];

          [v12 addObject:v20];
        }

        v14 = [v13 countByEnumeratingWithState:&v35 objects:v50 count:16];
      }

      while (v14);
    }

    clientID2 = [(PDSRegistrar *)self clientID];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __55__PDSRegistrar_batchUpdateRegistrations_forUser_error___block_invoke_2;
    v34[3] = &unk_2799F78D0;
    v34[4] = &v39;
    [v31 batchUpdateEntries:v12 forClientID:clientID2 withCompletion:v34];

    v22 = v40[5];
  }

  else
  {
    v22 = 0;
  }

  v23 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v22 XPCError:*(*(&buf + 1) + 40)];
  v24 = v23;
  if (error && v23)
  {
    v25 = v23;
    *error = v24;
  }

  v26 = pds_defaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 138412546;
    selfCopy = self;
    v48 = 2112;
    v49 = v24;
    _os_log_impl(&dword_25DECA000, v26, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed batchUpdateRegistrations {self: %@, overallError: %@}", v46, 0x16u);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&buf, 8);

  v27 = *MEMORY[0x277D85DE8];
  return v24 == 0;
}

- (BOOL)removeRegistration:(id)registration fromUser:(id)user error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  userCopy = user;
  if (!registrationCopy)
  {
    [PDSRegistrar removeRegistration:fromUser:error:];
  }

  if (!userCopy)
  {
    [PDSRegistrar removeRegistration:fromUser:error:];
  }

  v10 = pds_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = registrationCopy;
    *&buf[22] = 2112;
    v37 = userCopy;
    _os_log_impl(&dword_25DECA000, v10, OS_LOG_TYPE_DEFAULT, "PDSRegistrar removeRegistration {self: %@, registration: %@, user: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  remoteVendor = self->_remoteVendor;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50__PDSRegistrar_removeRegistration_fromUser_error___block_invoke;
  v31[3] = &unk_2799F78D0;
  v31[4] = buf;
  v12 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v31];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  if (v12)
  {
    v13 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v15 = [(PDSEntry *)v13 initWithUser:userCopy registration:registrationCopy clientID:clientID state:2];

    v16 = [MEMORY[0x277CBEB98] setWithObject:v15];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__PDSRegistrar_removeRegistration_fromUser_error___block_invoke_2;
    v24[3] = &unk_2799F78D0;
    v24[4] = &v25;
    [v12 storeEntries:v16 deleteEntries:0 withCompletion:v24];

    v17 = v26[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v17 XPCError:*(*&buf[8] + 40)];
  v19 = v18;
  if (error && v18)
  {
    v20 = v18;
    *error = v19;
  }

  v21 = pds_defaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 138412546;
    selfCopy = self;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_25DECA000, v21, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed removeRegistration {self: %@, overallError: %@}", v32, 0x16u);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (BOOL)removeAllRegistrationsFromUser:(id)user error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    [PDSRegistrar removeAllRegistrationsFromUser:error:];
  }

  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = userCopy;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar removeAllRegistrations {self: %@, user: %@}", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  remoteVendor = self->_remoteVendor;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__PDSRegistrar_removeAllRegistrationsFromUser_error___block_invoke;
  v25[3] = &unk_2799F78D0;
  v25[4] = buf;
  v9 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v25];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if (v9)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__PDSRegistrar_removeAllRegistrationsFromUser_error___block_invoke_2;
    v18[3] = &unk_2799F78D0;
    v18[4] = &v19;
    [v9 removeAllEntriesForUser:userCopy withClientID:clientID withCompletion:v18];

    v11 = v20[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v11 XPCError:*(*&buf[8] + 40)];
  v13 = v12;
  if (error && v12)
  {
    v14 = v12;
    *error = v13;
  }

  v15 = pds_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 138412546;
    selfCopy = self;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_25DECA000, v15, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed removeAllRegistrations {self: %@, overallError: %@}", v26, 0x16u);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

- (id)currentRegistrationsForUser:(id)user error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    [PDSRegistrar currentRegistrationsForUser:error:];
  }

  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = userCopy;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar currentRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteVendor = self->_remoteVendor;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __50__PDSRegistrar_currentRegistrationsForUser_error___block_invoke;
  v33[3] = &unk_2799F78D0;
  v33[4] = buf;
  v9 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v33];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (v9)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__PDSRegistrar_currentRegistrationsForUser_error___block_invoke_2;
    v20[3] = &unk_2799F7948;
    v20[4] = self;
    v20[5] = &v21;
    v20[6] = &v27;
    [v9 entriesForUser:userCopy clientID:clientID withCompletion:v20];

    v11 = v28[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v11 XPCError:*(*&buf[8] + 40)];
  v13 = v12;
  if (error && v12)
  {
    v14 = v12;
    *error = v13;
  }

  v15 = pds_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v22[5];
    *v34 = 138412802;
    selfCopy = self;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v16;
    _os_log_impl(&dword_25DECA000, v15, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed currentRegistrationsForUser {self: %@, overallError: %@, response: %@}", v34, 0x20u);
  }

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __50__PDSRegistrar_currentRegistrationsForUser_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _activeRegistrationsFromEntries:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)currentRegistrationsForUser:(id)user completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  userCopy = user;
  completionCopy = completion;
  v8 = completionCopy;
  if (userCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRegistrar currentRegistrationsForUser:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [PDSRegistrar currentRegistrationsForUser:completion:];
LABEL_3:
  v9 = pds_defaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = userCopy;
    _os_log_impl(&dword_25DECA000, v9, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async currentRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  remoteVendor = self->_remoteVendor;
  v18 = 0;
  v11 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v18];
  v12 = v18;
  if (v11)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__PDSRegistrar_currentRegistrationsForUser_completion___block_invoke;
    v16[3] = &unk_2799F7970;
    v16[4] = self;
    v17 = v8;
    [v11 entriesForUser:userCopy clientID:clientID withCompletion:v16];
  }

  else
  {
    v14 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v12];
    v8[2](v8, 0, v14);

    v12 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __55__PDSRegistrar_currentRegistrationsForUser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async currentRegistrationsForUser {self: %@, error: %@, response: %@}", &v13, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _activeRegistrationsFromEntries:v5];
  v11 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v10, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)activeUsersWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar activeUsersWithError {self: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteVendor = self->_remoteVendor;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __37__PDSRegistrar_activeUsersWithError___block_invoke;
  v31[3] = &unk_2799F78D0;
  v31[4] = &buf;
  v7 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v31];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__PDSRegistrar_activeUsersWithError___block_invoke_2;
    v18[3] = &unk_2799F7998;
    v18[4] = &v25;
    v18[5] = &v19;
    [v7 activeUsersWithClientID:clientID withCompletion:v18];

    v9 = v26[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v9 XPCError:*(*(&buf + 1) + 40)];
  v11 = v10;
  if (error && v10)
  {
    v12 = v10;
    *error = v11;
  }

  v13 = pds_defaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v20[5];
    *v32 = 138412802;
    selfCopy = self;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_25DECA000, v13, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed activeUsersWithError {self: %@, overallError: %@, response: %@}", v32, 0x20u);
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __37__PDSRegistrar_activeUsersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)activeUsersWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    [PDSRegistrar activeUsersWithCompletion:];
  }

  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async activeUsersWithError {self: %@}", buf, 0xCu);
  }

  remoteVendor = self->_remoteVendor;
  v14 = 0;
  v7 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v14];
  v8 = v14;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__PDSRegistrar_activeUsersWithCompletion___block_invoke;
    v12[3] = &unk_2799F7970;
    v12[4] = self;
    v13 = completionCopy;
    [v7 activeUsersWithClientID:clientID withCompletion:v12];
  }

  else
  {
    v10 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v8];
    (*(completionCopy + 2))(completionCopy, 0, v10);

    v8 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __42__PDSRegistrar_activeUsersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async activeUsersWithError {self: %@, error: %@, response: %@}", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v5, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)usersWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar usersWithError {self: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteVendor = self->_remoteVendor;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __31__PDSRegistrar_usersWithError___block_invoke;
  v31[3] = &unk_2799F78D0;
  v31[4] = &buf;
  v7 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v31];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __31__PDSRegistrar_usersWithError___block_invoke_2;
    v18[3] = &unk_2799F7998;
    v18[4] = &v25;
    v18[5] = &v19;
    [v7 usersWithClientID:clientID withCompletion:v18];

    v9 = v26[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v9 XPCError:*(*(&buf + 1) + 40)];
  v11 = v10;
  if (error && v10)
  {
    v12 = v10;
    *error = v11;
  }

  v13 = pds_defaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v20[5];
    *v32 = 138412802;
    selfCopy = self;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_25DECA000, v13, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed usersWithError {self: %@, overallError: %@, response: %@}", v32, 0x20u);
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __31__PDSRegistrar_usersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)usersWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async usersWithError {self: %@}", buf, 0xCu);
  }

  if (!completionCopy)
  {
    [PDSRegistrar usersWithCompletion:];
  }

  remoteVendor = self->_remoteVendor;
  v14 = 0;
  v7 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v14];
  v8 = v14;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__PDSRegistrar_usersWithCompletion___block_invoke;
    v12[3] = &unk_2799F7970;
    v12[4] = self;
    v13 = completionCopy;
    [v7 usersWithClientID:clientID withCompletion:v12];
  }

  else
  {
    v10 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v8];
    (*(completionCopy + 2))(completionCopy, 0, v10);

    v8 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __36__PDSRegistrar_usersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async usersWithError {self: %@, error: %@, response: %@}", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v5, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)allRegistrationsForUser:(id)user error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    [PDSRegistrar allRegistrationsForUser:error:];
  }

  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = userCopy;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar allRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  remoteVendor = self->_remoteVendor;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__PDSRegistrar_allRegistrationsForUser_error___block_invoke;
  v33[3] = &unk_2799F78D0;
  v33[4] = buf;
  v9 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v33];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (v9)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46__PDSRegistrar_allRegistrationsForUser_error___block_invoke_2;
    v20[3] = &unk_2799F7948;
    v20[4] = self;
    v20[5] = &v21;
    v20[6] = &v27;
    [v9 entriesForUser:userCopy clientID:clientID withCompletion:v20];

    v11 = v28[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v11 XPCError:*(*&buf[8] + 40)];
  v13 = v12;
  if (error && v12)
  {
    v14 = v12;
    *error = v13;
  }

  v15 = pds_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v22[5];
    *v34 = 138412802;
    selfCopy = self;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v16;
    _os_log_impl(&dword_25DECA000, v15, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed allRegistrationsForUser {self: %@, overallError: %@, response: %@}", v34, 0x20u);
  }

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __46__PDSRegistrar_allRegistrationsForUser_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _registrationsFromEntries:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)allRegistrationsForUser:(id)user completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  userCopy = user;
  completionCopy = completion;
  v8 = completionCopy;
  if (userCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRegistrar allRegistrationsForUser:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [PDSRegistrar allRegistrationsForUser:completion:];
LABEL_3:
  v9 = pds_defaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = userCopy;
    _os_log_impl(&dword_25DECA000, v9, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async allRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  remoteVendor = self->_remoteVendor;
  v18 = 0;
  v11 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v18];
  v12 = v18;
  if (v11)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__PDSRegistrar_allRegistrationsForUser_completion___block_invoke;
    v16[3] = &unk_2799F7970;
    v16[4] = self;
    v17 = v8;
    [v11 entriesForUser:userCopy clientID:clientID withCompletion:v16];
  }

  else
  {
    v14 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v12];
    v8[2](v8, 0, v14);

    v12 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __51__PDSRegistrar_allRegistrationsForUser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async allRegistrationsForUser {self: %@, error: %@, response: %@}", &v13, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _registrationsFromEntries:v5];
  v11 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v10, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)allRegistrationsWithError:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar allRegistrations {self: %@}", &v10, 0xCu);
  }

  v6 = [(PDSRegistrar *)self allEntriesWithError:error];
  v7 = [(PDSRegistrar *)self _registrationsFromEntries:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)allRegistrationsWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    [PDSRegistrar allRegistrationsWithCompletion:];
  }

  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async allRegistrations {self: %@}", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PDSRegistrar_allRegistrationsWithCompletion___block_invoke;
  v8[3] = &unk_2799F7970;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  [(PDSRegistrar *)self allEntriesWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __47__PDSRegistrar_allRegistrationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async allRegistrations {self: %@, error: %@, response: %@}", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _registrationsFromEntries:v5];
  (*(v9 + 16))(v9, v10, v6);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)allEntriesWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar allEntries {self: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteVendor = self->_remoteVendor;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __36__PDSRegistrar_allEntriesWithError___block_invoke;
  v31[3] = &unk_2799F78D0;
  v31[4] = &buf;
  v7 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v31];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36__PDSRegistrar_allEntriesWithError___block_invoke_2;
    v18[3] = &unk_2799F7998;
    v18[4] = &v19;
    v18[5] = &v25;
    [v7 entriesForClientID:clientID withCompletion:v18];

    v9 = v26[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v9 XPCError:*(*(&buf + 1) + 40)];
  v11 = v10;
  if (error && v10)
  {
    v12 = v10;
    *error = v11;
  }

  v13 = pds_defaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v20[5];
    *v32 = 138412802;
    selfCopy = self;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_25DECA000, v13, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed allEntries {self: %@, overallError: %@, response: %@}", v32, 0x20u);
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __36__PDSRegistrar_allEntriesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)allEntriesWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pds_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async allEntries {self: %@}", buf, 0xCu);
  }

  if (!completionCopy)
  {
    [PDSRegistrar allEntriesWithCompletion:];
  }

  remoteVendor = self->_remoteVendor;
  v14 = 0;
  v7 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v14];
  v8 = v14;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__PDSRegistrar_allEntriesWithCompletion___block_invoke;
    v12[3] = &unk_2799F7970;
    v12[4] = self;
    v13 = completionCopy;
    [v7 entriesForClientID:clientID withCompletion:v12];
  }

  else
  {
    v10 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v8];
    (*(completionCopy + 2))(completionCopy, 0, v10);

    v8 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __41__PDSRegistrar_allEntriesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async allEntries {self: %@, error: %@, response: %@}", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v5, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteRegistration:(id)registration fromUser:(id)user error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  userCopy = user;
  if (!registrationCopy)
  {
    [PDSRegistrar deleteRegistration:fromUser:error:];
  }

  if (!userCopy)
  {
    [PDSRegistrar deleteRegistration:fromUser:error:];
  }

  v10 = pds_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = registrationCopy;
    *&buf[22] = 2112;
    v37 = userCopy;
    _os_log_impl(&dword_25DECA000, v10, OS_LOG_TYPE_DEFAULT, "PDSRegistrar deleteRegistration {self: %@, registration: %@, user: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  remoteVendor = self->_remoteVendor;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50__PDSRegistrar_deleteRegistration_fromUser_error___block_invoke;
  v31[3] = &unk_2799F78D0;
  v31[4] = buf;
  v12 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v31];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  if (v12)
  {
    v13 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v15 = [(PDSEntry *)v13 initWithUser:userCopy registration:registrationCopy clientID:clientID state:2];

    v16 = [MEMORY[0x277CBEB98] setWithObject:v15];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__PDSRegistrar_deleteRegistration_fromUser_error___block_invoke_2;
    v24[3] = &unk_2799F78D0;
    v24[4] = &v25;
    [v12 storeEntries:0 deleteEntries:v16 withCompletion:v24];

    v17 = v26[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v17 XPCError:*(*&buf[8] + 40)];
  v19 = v18;
  if (error && v18)
  {
    v20 = v18;
    *error = v19;
  }

  v21 = pds_defaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 138412546;
    selfCopy = self;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_25DECA000, v21, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed deleteRegistration {self: %@, overallError: %@}", v32, 0x16u);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (id)_wrappedErrorForFailedRemote:(id)remote
{
  v10[1] = *MEMORY[0x277D85DE8];
  remoteCopy = remote;
  v4 = remoteCopy;
  if (remoteCopy)
  {
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = remoteCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:PDSRegistrarErrorDomain code:-201 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_wrappedErrorForGivenError:(id)error XPCError:(id)cError
{
  v27[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  cErrorCopy = cError;
  v7 = cErrorCopy;
  if (cErrorCopy)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = PDSRegistrarErrorDomain;
    v26 = *MEMORY[0x277CCA7E8];
    v27[0] = cErrorCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v11 = v8;
    v12 = v9;
    v13 = -201;
LABEL_3:
    v14 = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

    goto LABEL_4;
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v18 = [domain isEqualToString:PDSCDCacheErrorDomain];

    v19 = MEMORY[0x277CCA9B8];
    v20 = PDSRegistrarErrorDomain;
    v21 = *MEMORY[0x277CCA7E8];
    if (v18)
    {
      v24 = *MEMORY[0x277CCA7E8];
      v25 = errorCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v11 = v19;
      v12 = v20;
      v13 = -202;
    }

    else
    {
      v22 = *MEMORY[0x277CCA7E8];
      v23 = errorCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v11 = v19;
      v12 = v20;
      v13 = -203;
    }

    goto LABEL_3;
  }

  v14 = 0;
LABEL_4:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_activeRegistrationsFromEntries:(id)entries
{
  if (entries)
  {
    v4 = [entries __imArrayByApplyingBlock:&__block_literal_global_1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __48__PDSRegistrar__activeRegistrationsFromEntries___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 registration];
  }

  return v3;
}

- (id)_registrationsFromEntries:(id)entries
{
  if (entries)
  {
    v4 = [entries __imArrayByApplyingBlock:&__block_literal_global_31];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithClientID:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"clientID" object:? file:? lineNumber:? description:?];
}

- (void)addRegistration:toUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)addRegistration:toUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)ensureRegistrationPresent:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)ensureRegistrationPresent:forUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)batchUpdateRegistrations:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registrations" object:? file:? lineNumber:? description:?];
}

- (void)batchUpdateRegistrations:forUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)removeRegistration:fromUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)removeRegistration:fromUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)removeAllRegistrationsFromUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)currentRegistrationsForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)currentRegistrationsForUser:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)currentRegistrationsForUser:completion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)activeUsersWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)usersWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsForUser:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsForUser:completion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];

  v3 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v2 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)allEntriesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deleteRegistration:fromUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)deleteRegistration:fromUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

@end