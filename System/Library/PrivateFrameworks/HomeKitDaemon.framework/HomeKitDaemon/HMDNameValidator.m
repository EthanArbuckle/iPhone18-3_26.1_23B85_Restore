@interface HMDNameValidator
+ (id)allowedMiddleCharacters;
+ (id)allowedTerminalCharacters;
- (HMDNameValidator)initWithUUID:(id)a3;
- (id)_addName:(id)a3 namespace:(id)a4;
- (id)_addNamespace:(id)a3;
- (id)_checkForConflict:(id)a3 namespace:(id)a4;
- (id)_removeName:(id)a3 namespace:(id)a4;
- (id)_removeNamespace:(id)a3;
- (id)_replaceName:(id)a3 withNewName:(id)a4 inNamespaces:(id)a5;
- (id)_validateName:(id)a3;
- (id)addName:(id)a3 namespace:(id)a4 voiceShortcutCheck:(BOOL)a5;
- (id)addNamespace:(id)a3;
- (id)checkForConflict:(id)a3 namespace:(id)a4;
- (id)despaceName:(id)a3;
- (id)nameByTrimmingDisallowedCharactersFromName:(id)a3;
- (id)removeName:(id)a3 namespace:(id)a4;
- (id)removeNamespace:(id)a3;
- (id)replaceName:(id)a3 withNewName:(id)a4 inNamespaces:(id)a5 voiceShortcutCheck:(BOOL)a6;
- (id)validateName:(id)a3;
@end

@implementation HMDNameValidator

- (id)replaceName:(id)a3 withNewName:(id)a4 inNamespaces:(id)a5 voiceShortcutCheck:(BOOL)a6
{
  v6 = a6;
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![v12 count])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v16;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Empty set of namespace UUIDs in operation to replace %@ with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    goto LABEL_11;
  }

  if (!v10 || !v11)
  {
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_11:
    v13 = v17;
    goto LABEL_14;
  }

  os_unfair_lock_lock_with_options();
  if (v6 && (isNameValidWithVoiceShortcut(v11) & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2300];
    v22 = *MEMORY[0x277CCA7E8];
    v23 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:95 userInfo:v19];
  }

  else
  {
    v13 = [(HMDNameValidator *)self _replaceName:v10 withNewName:v11 inNamespaces:v12];
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)removeName:(id)a3 namespace:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      os_unfair_lock_lock_with_options();
      v8 = [(HMDNameValidator *)self _removeName:v6 namespace:v7];
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_9;
    }

    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to remove %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  v8 = v12;
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)addName:(id)a3 namespace:(id)a4 voiceShortcutCheck:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to add %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    goto LABEL_10;
  }

  if (!v8)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_10:
    v10 = v14;
    goto LABEL_13;
  }

  os_unfair_lock_lock_with_options();
  if (v5 && (isNameValidWithVoiceShortcut(v8) & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2300];
    v19 = *MEMORY[0x277CCA7E8];
    v20 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:95 userInfo:v16];
  }

  else
  {
    v10 = [(HMDNameValidator *)self _addName:v8 namespace:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)checkForConflict:(id)a3 namespace:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDNameValidator *)self _checkForConflict:v6 namespace:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)validateName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDNameValidator *)self _validateName:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)removeNamespace:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(HMDNameValidator *)self _removeNamespace:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to remove namespace", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)addNamespace:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(HMDNameValidator *)self _addNamespace:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Namespace UUID is nil in operation to add namespace", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_replaceName:(id)a3 withNewName:(id)a4 inNamespaces:(id)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v63 = v7;
  if ([v7 isEqual:v8])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v84 = v12;
      v85 = 2112;
      v86 = v7;
      v87 = 2112;
      v88 = v9;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to replace %@ with same entry in namespaces %@ - skipping...", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v13 = 0;
  }

  else
  {
    v60 = v8;
    v61 = [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CBEB18] array];
    v59 = v58 = v9;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v77;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v77 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v76 + 1) + 8 * i);
          v20 = [(HMDNameValidator *)self _removeName:v7 namespace:v19];
          if (v20)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138544130;
              v84 = v23;
              v85 = 2112;
              v86 = v7;
              v87 = 2112;
              v88 = v19;
              v89 = 2112;
              v90 = v20;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove existing name %@ from namespace %@ error %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v21);
          }

          else
          {
            [v61 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v76 objects:v91 count:16];
      }

      while (v16);
    }

    v8 = v60;
    if (v60)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v24 = v14;
      v25 = [v24 countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v73;
        v28 = v59;
        while (2)
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v73 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v72 + 1) + 8 * j);
            v31 = [(HMDNameValidator *)self _addName:v60 namespace:v30];
            if (v31)
            {
              v32 = v31;
              v33 = objc_autoreleasePoolPush();
              v34 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = HMFGetLogIdentifier();
                *buf = 138544130;
                v84 = v35;
                v85 = 2112;
                v86 = v60;
                v87 = 2112;
                v88 = v30;
                v89 = 2112;
                v90 = v32;
                _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to add new name %@ from namespace %@  error %@", buf, 0x2Au);
              }

              v57 = v32;

              objc_autoreleasePoolPop(v33);
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v36 = v59;
              v37 = [v36 countByEnumeratingWithState:&v68 objects:v81 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v69;
                do
                {
                  for (k = 0; k != v38; ++k)
                  {
                    if (*v69 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v68 + 1) + 8 * k);
                    v42 = [(HMDNameValidator *)self _removeName:v8 namespace:v41, v57];
                    if (v42)
                    {
                      v43 = objc_autoreleasePoolPush();
                      v44 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        v45 = HMFGetLogIdentifier();
                        *buf = 138544130;
                        v84 = v45;
                        v85 = 2112;
                        v86 = v60;
                        v87 = 2112;
                        v88 = v41;
                        v89 = 2112;
                        v90 = v42;
                        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove new name %@ to namespace %@ error %@", buf, 0x2Au);

                        v8 = v60;
                      }

                      objc_autoreleasePoolPop(v43);
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v68 objects:v81 count:16];
                }

                while (v38);
              }

              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v24 = v61;
              v46 = [v24 countByEnumeratingWithState:&v64 objects:v80 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v65;
                do
                {
                  for (m = 0; m != v47; ++m)
                  {
                    if (*v65 != v48)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v50 = *(*(&v64 + 1) + 8 * m);
                    v51 = [(HMDNameValidator *)self _addName:v63 namespace:v50, v57];
                    if (v51)
                    {
                      v52 = objc_autoreleasePoolPush();
                      v53 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        v54 = HMFGetLogIdentifier();
                        *buf = 138544130;
                        v84 = v54;
                        v85 = 2112;
                        v86 = v63;
                        v87 = 2112;
                        v88 = v50;
                        v89 = 2112;
                        v90 = v51;
                        _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to add existing name %@ to namespace %@ error %@", buf, 0x2Au);
                      }

                      objc_autoreleasePoolPop(v52);
                    }
                  }

                  v47 = [v24 countByEnumeratingWithState:&v64 objects:v80 count:16];
                }

                while (v47);
                v8 = v60;
              }

              v28 = v59;
              v13 = v57;
              goto LABEL_55;
            }

            [v59 addObject:v30];
          }

          v26 = [v24 countByEnumeratingWithState:&v72 objects:v82 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }

        v13 = 0;
      }

      else
      {
        v13 = 0;
        v28 = v59;
      }

LABEL_55:
    }

    else
    {
      v13 = 0;
      v28 = v59;
    }

    v9 = v58;
  }

  v55 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_removeName:(id)a3 namespace:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNameValidator *)self namespaceList];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [(HMDNameValidator *)self despaceName:v6];
    if ([v9 containsObject:v10])
    {
      [v9 removeObject:v10];
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to look up namespace %@ to remove name %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_addName:(id)a3 namespace:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNameValidator *)self _validateName:v6];
  if (!v8)
  {
    v9 = [(HMDNameValidator *)self despaceName:v6];
    v10 = [(HMDNameValidator *)self namespaceList];
    v11 = [v10 objectForKeyedSubscript:v7];

    if (v11)
    {
      if (![v11 containsObject:v9])
      {
        [v11 addObject:v9];
        v8 = 0;
        goto LABEL_10;
      }

      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCFD28];
      v14 = 31;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to look up namespace %@ to remove name %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCFD28];
      v14 = 2;
    }

    v8 = [v12 errorWithDomain:v13 code:v14 userInfo:0];
LABEL_10:
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_checkForConflict:(id)a3 namespace:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNameValidator *)self despaceName:v6];
  v9 = [(HMDNameValidator *)self namespaceList];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to look up namespace %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 2;
    goto LABEL_7;
  }

  if ([v10 containsObject:v8])
  {
    v11 = 31;
LABEL_7:
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v11];
    goto LABEL_9;
  }

  v15 = 0;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)nameByTrimmingDisallowedCharactersFromName:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_opt_class() allowedMiddleCharacters];
  v6 = [v5 invertedSet];

  v7 = [v3 componentsSeparatedByCharactersInSet:v6];
  v8 = [v7 componentsJoinedByString:&stru_283CF9D50];

  objc_autoreleasePoolPop(v4);

  return v8;
}

- (id)_validateName:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v7 = [objc_opt_class() allowedInitialCharacters];
    v8 = [v4 rangeOfCharacterFromSet:v7 options:129];

    if (v8)
    {
      v9 = [v4 substringWithRange:{0, 1}];
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v9 dataUsingEncoding:4];
        v15 = [v14 hmf_hexadecimalRepresentation];
        v42 = 138544130;
        v43 = v13;
        v44 = 2112;
        v45 = v9;
        v46 = 2112;
        v47 = v15;
        v48 = 2112;
        v49 = v4;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Name is invalid: starts with disallowed character '%@' (0x%@): '%@'", &v42, 0x2Au);
      }

      v16 = 36;
LABEL_15:

      objc_autoreleasePoolPop(v10);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v16];

      objc_autoreleasePoolPop(v6);
      goto LABEL_21;
    }

    v21 = [objc_opt_class() allowedTerminalCharacters];
    v22 = [v4 rangeOfCharacterFromSet:v21 options:133];

    if (v22 != [v4 length] - 1)
    {
      v9 = [v4 substringWithRange:{objc_msgSend(v4, "length") - 1, 1}];
      v10 = objc_autoreleasePoolPush();
      v28 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v9 dataUsingEncoding:4];
        v31 = [v30 hmf_hexadecimalRepresentation];
        v42 = 138544130;
        v43 = v29;
        v44 = 2112;
        v45 = v9;
        v46 = 2112;
        v47 = v31;
        v48 = 2112;
        v49 = v4;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Name is invalid: ends with allowed character '%@' (0x%@): '%@'", &v42, 0x2Au);
      }

      v16 = 60;
      goto LABEL_15;
    }

    v23 = [objc_opt_class() allowedMiddleCharacters];
    v24 = [v23 invertedSet];

    v25 = [v4 rangeOfCharacterFromSet:v24 options:129];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
    }

    else
    {
      v33 = [v4 substringWithRange:{v25, v26}];
      v34 = objc_autoreleasePoolPush();
      v35 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [v33 dataUsingEncoding:4];
        v39 = [v38 hmf_hexadecimalRepresentation];
        v42 = 138544130;
        v43 = v37;
        v44 = 2112;
        v45 = v33;
        v46 = 2112;
        v47 = v39;
        v48 = 2112;
        v49 = v4;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Name is invalid: contains disallowed character '%@' (0x%@): '%@'", &v42, 0x2Au);
      }

      objc_autoreleasePoolPop(v34);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:35];
    }

    objc_autoreleasePoolPop(v6);
    v20 = v27;
  }

  else
  {
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v42 = 138543618;
      v43 = v19;
      v44 = 2112;
      v45 = v4;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Name %@ is empty", &v42, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  v32 = v20;
LABEL_21:

  v40 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)despaceName:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 whitespaceCharacterSet];
  v7 = MEMORY[0x277CBEB18];
  v8 = [v5 componentsSeparatedByCharactersInSet:v6];

  v9 = [v7 arrayWithArray:v8];

  v10 = [(HMDNameValidator *)self nonZeroLengthPredicate];
  v11 = [v9 filteredArrayUsingPredicate:v10];

  v12 = [v11 componentsJoinedByString:&stru_283CF9D50];
  v13 = [v12 lowercaseString];

  return v13;
}

- (id)_removeNamespace:(id)a3
{
  v4 = a3;
  v5 = [(HMDNameValidator *)self namespaceList];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(HMDNameValidator *)self namespaceList];
    [v7 removeObjectForKey:v4];

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  }

  return v8;
}

- (id)_addNamespace:(id)a3
{
  v4 = a3;
  v5 = [(HMDNameValidator *)self namespaceList];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:1 userInfo:0];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = [(HMDNameValidator *)self namespaceList];
    [v9 setObject:v8 forKey:v4];

    v7 = 0;
  }

  return v7;
}

- (HMDNameValidator)initWithUUID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HMDNameValidator;
  v6 = [(HMDNameValidator *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    namespaceList = v6->_namespaceList;
    v6->_namespaceList = v7;

    objc_storeStrong(&v6->_homeManagerUUID, a3);
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"length != 0"];
    nonZeroLengthPredicate = v6->_nonZeroLengthPredicate;
    v6->_nonZeroLengthPredicate = v9;

    v11 = [(HMDNameValidator *)v6 _addNamespace:v6->_homeManagerUUID];
  }

  return v6;
}

+ (id)allowedMiddleCharacters
{
  v2 = [a1 allowedTerminalCharacters];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = [MEMORY[0x277CCA900] controlCharacterSet];
  [v3 formUnionWithCharacterSet:v5];

  v6 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v3 formUnionWithCharacterSet:v6];

  return v3;
}

+ (id)allowedTerminalCharacters
{
  v2 = [a1 allowedInitialCharacters];
  v3 = [v2 mutableCopy];

  [v3 addCharactersInString:@"."];

  return v3;
}

@end