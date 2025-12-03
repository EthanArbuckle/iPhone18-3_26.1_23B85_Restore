@interface HMDHomeObjectChangeHandler
- (HMDHome)home;
- (HMDHomeObjectChangeHandler)initWithHome:(id)home;
- (void)handleObjectAdd:(id)add message:(id)message;
- (void)handleObjectRemove:(id)remove message:(id)message;
- (void)handleObjectUpdate:(id)update newValues:(id)values message:(id)message;
@end

@implementation HMDHomeObjectChangeHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)handleObjectUpdate:(id)update newValues:(id)values message:(id)message
{
  v116 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  valuesCopy = values;
  messageCopy = message;
  home = [(HMDHomeObjectChangeHandler *)self home];
  v12 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    uuid = [v14 uuid];
    v16 = [home roomWithUUID:uuid];

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v111 = v20;
      v112 = 2112;
      v113 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received room transaction, applying it to room: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (v16)
    {
      [v16 transactionObjectUpdated:updateCopy newValues:v12 message:messageCopy];
    }

    else
    {
      [(HMDHomeObjectChangeHandler *)selfCopy handleObjectAdd:v14 message:messageCopy];
    }

    v21 = v12;
    goto LABEL_37;
  }

  v21 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (v23)
  {
    uuid2 = [v23 uuid];
    v25 = [home zoneWithUUID:uuid2];

    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v103 = v12;
      v29 = v21;
      v30 = home;
      v31 = messageCopy;
      v33 = v32 = updateCopy;
      *buf = 138543618;
      v111 = v33;
      v112 = 2112;
      v113 = v25;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Received zone transaction, applying it to zone: %@", buf, 0x16u);

      updateCopy = v32;
      messageCopy = v31;
      home = v30;
      v21 = v29;
      v12 = v103;
    }

    objc_autoreleasePoolPop(v26);
    if (!v25)
    {
      [(HMDHomeObjectChangeHandler *)selfCopy2 handleObjectAdd:v23 message:messageCopy];
      goto LABEL_36;
    }

    v34 = v25;
LABEL_27:
    [v34 transactionObjectUpdated:updateCopy newValues:v21 message:messageCopy];
LABEL_36:

    goto LABEL_37;
  }

  v104 = updateCopy;
  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v21;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  if (v36)
  {
    uuid3 = [v36 uuid];
    v25 = [home serviceGroupWithUUID:uuid3];

    v38 = objc_autoreleasePoolPush();
    self = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v111 = v40;
      v112 = 2112;
      v113 = v25;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Received serviceGroup transaction, applying it to serviceGroup: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    if (v25)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v21;
  }

  else
  {
    v41 = 0;
  }

  v36 = v41;

  if (v36)
  {
    uuid4 = [v36 uuid];
    v43 = [home actionSetWithUUID:uuid4];
    goto LABEL_34;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = v21;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;

  if (v46 || ((v21 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v47 = 0) : (v47 = v21), v46 = v47, v21, v46))
  {
    uuid5 = [v46 uuid];
    v49 = [home triggerWithUUID:uuid5];

    v50 = v49;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;

    if (v50)
    {
      if (isKindOfClass)
      {
        updateCopy = v104;
        [v50 transactionObjectUpdated:v104 newValues:v21 message:messageCopy];
LABEL_55:

        goto LABEL_37;
      }

      v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:v54];
    }

    else
    {
      [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v46 message:messageCopy];
    }

    updateCopy = v104;
    goto LABEL_55;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v21;
  }

  else
  {
    v55 = 0;
  }

  v36 = v55;

  if (v36)
  {
    uuid4 = [v36 uuid];
    v43 = [home accessoryWithUUID:uuid4];
LABEL_34:
    v25 = v43;

    if (v25)
    {
LABEL_26:
      v34 = v25;
      updateCopy = v104;
      goto LABEL_27;
    }

LABEL_35:
    [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v36 message:messageCopy];
    updateCopy = v104;
    goto LABEL_36;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = v21;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;

  if (v57)
  {
    v58 = v57;
    parentUUID = [v58 parentUUID];
    v60 = [home accessoryWithUUID:parentUUID];

    if (v60)
    {
      updateCopy = v104;
      [v60 transactionObjectUpdated:v104 newValues:v21 message:messageCopy];
    }

    else
    {
      v70 = objc_autoreleasePoolPush();
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = v102 = v70;
        parentUUID2 = [v58 parentUUID];
        instanceID = [v58 instanceID];
        *buf = 138543874;
        v111 = v72;
        v112 = 2112;
        v113 = parentUUID2;
        v114 = 2112;
        v115 = instanceID;
        _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory %@ to add/update service %@", buf, 0x20u);

        v70 = v102;
      }

      objc_autoreleasePoolPop(v70);
      updateCopy = v104;
    }
  }

  else
  {
    v61 = v21;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    v21 = v62;

    if (v21)
    {
      v96 = v61;
      users = [home users];
      pairingIdentity = [v21 pairingIdentity];
      v100 = [pairingIdentity objectForKeyedSubscript:@"HAP.identifier"];

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      obj = users;
      v99 = [obj countByEnumeratingWithState:&v105 objects:v109 count:16];
      if (v99)
      {
        v98 = *v106;
LABEL_73:
        v65 = 0;
        while (1)
        {
          if (*v106 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v105 + 1) + 8 * v65);
          uuid6 = [v66 uuid];
          uuid7 = [v21 uuid];
          if ([uuid6 isEqual:uuid7])
          {
            break;
          }

          pairingUsername = [v66 pairingUsername];
          v101 = [pairingUsername isEqualToString:v100];

          if (v101)
          {
            goto LABEL_92;
          }

          if (v99 == ++v65)
          {
            v99 = [obj countByEnumeratingWithState:&v105 objects:v109 count:16];
            if (v99)
            {
              goto LABEL_73;
            }

            goto LABEL_80;
          }
        }

LABEL_92:
        v79 = v66;

        updateCopy = v104;
        if (!v79)
        {
          goto LABEL_94;
        }

        [v79 transactionObjectUpdated:v104 newValues:v96 message:messageCopy];
      }

      else
      {
LABEL_80:

        updateCopy = v104;
LABEL_94:
        [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v21 message:messageCopy];
      }
    }

    else
    {
      v21 = v61;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = v21;
      }

      else
      {
        v75 = 0;
      }

      v76 = v75;

      if (v76)
      {
        uuid8 = [v76 uuid];
        v78 = [home outgoingInvitationWithUUID:uuid8];

        if (v78)
        {
          updateCopy = v104;
          [v78 transactionObjectUpdated:v104 newValues:v21 message:messageCopy];
        }

        else
        {
          [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v76 message:messageCopy];
          updateCopy = v104;
        }
      }

      else
      {
        v21 = v21;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v80 = v21;
        }

        else
        {
          v80 = 0;
        }

        v81 = v80;

        if (!v81)
        {
          v82 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v83 = v82;
          }

          else
          {
            v83 = 0;
          }

          v84 = v83;
          v21 = v82;

          if (v84)
          {
            uuid9 = [v84 uuid];
            v86 = [home mediaSystemWithUUID:uuid9];

            if (v86)
            {
              [v86 transactionObjectUpdated:v104 newValues:v82 message:messageCopy];
            }

            else
            {
              mediaSystemController = [home mediaSystemController];
              [mediaSystemController _handleAddMediaSystemModel:v84 message:messageCopy];
            }
          }

          else
          {
            v21 = v82;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v87 = v21;
            }

            else
            {
              v87 = 0;
            }

            v88 = v87;

            if (v88)
            {
              networkProtectionGroupRegistry = [home networkProtectionGroupRegistry];
              [networkProtectionGroupRegistry handleAddOrUpdateAccessoryNetworkProtectionGroupModel:v88 message:messageCopy];

              updateCopy = v104;
              goto LABEL_37;
            }

            v91 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v93 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              v94 = HMFGetLogIdentifier();
              *buf = 138543874;
              v111 = v94;
              v112 = 2112;
              v113 = v21;
              v114 = 2112;
              v115 = objc_opt_class();
              v95 = v115;
              _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v91);
            v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [messageCopy respondWithError:v21];
          }

          updateCopy = v104;
          goto LABEL_37;
        }

        [home _handleUpdateAppDataModel:v81 message:messageCopy];
      }
    }
  }

LABEL_37:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)handleObjectRemove:(id)remove message:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  messageCopy = message;
  home = [(HMDHomeObjectChangeHandler *)self home];
  v9 = removeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [home _handleRemoveRoomModel:v11 message:messageCopy];
    v12 = v9;
    goto LABEL_62;
  }

  v12 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    [home _handleRemoveZoneModel:v14 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    [home _handleRemoveServiceGroupModel:v16 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    [home _handleRemoveActionSetModel:v18 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    [home _handleRemoveAccessoryModel:v20 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    parentUUID = [v22 parentUUID];
    v24 = [home accessoryWithUUID:parentUUID];

    [v24 transactionObjectRemoved:v22 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v12;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  if (v26)
  {
    [home _handleRemoveUserModel:v26 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v12;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if (v28)
  {
    [home _handleRemoveTriggerModel:v28 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v12;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  if (v30)
  {
    [home _handleRemoveOutgoingHomeInvitationModel:v30 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v12;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32)
  {
    [home _handleRemoveAppDataModel:v32 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v12;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v34)
  {
    mediaSystemController = [home mediaSystemController];
    [mediaSystemController _handleRemoveMediaSystemModel:v34 message:messageCopy];
LABEL_61:

    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v12;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (v37)
  {
    mediaSystemController = [home networkProtectionGroupRegistry];
    [mediaSystemController handleRemoveAccessoryNetworkProtectionGroupModel:v37 message:messageCopy];
    goto LABEL_61;
  }

  v39 = objc_autoreleasePoolPush();
  selfCopy = self;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    v43 = 138543618;
    v44 = v42;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [HMDHome transactionObjectRemoved]", &v43, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v12];
LABEL_62:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)handleObjectAdd:(id)add message:(id)message
{
  addCopy = add;
  messageCopy = message;
  home = [(HMDHomeObjectChangeHandler *)self home];
  v43 = addCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v43;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [home _handleAddRoomModel:v10 message:messageCopy];
  }

  else
  {
    v11 = v43;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      [home _handleAddZoneModel:v13 message:messageCopy];
    }

    else
    {
      v14 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        [home _handleAddServiceGroupModel:v16 message:messageCopy];
      }

      else
      {
        v17 = v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        if (v19)
        {
          [home _handleAddActionSetModel:v19 message:messageCopy];
        }

        else
        {
          v20 = v17;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          if (v22)
          {
            [home _handleAddTimerTriggerModel:v22 message:messageCopy];
          }

          else
          {
            v23 = v20;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            if (v25)
            {
              [home _handleAddEventTriggerModel:v25 message:messageCopy];
            }

            else
            {
              v26 = v23;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              if (v28)
              {
                [home _handleAddAccessoryModel:v28 message:messageCopy];
              }

              else
              {
                v29 = v26;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v30 = v29;
                }

                else
                {
                  v30 = 0;
                }

                v31 = v30;

                if (v31)
                {
                  [home _handleAddUserModel:v31 message:messageCopy];
                }

                else
                {
                  v32 = v29;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v33 = v32;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  v34 = v33;

                  if (v34)
                  {
                    [home _handleAddOutgoingHomeInvitationModel:v34 message:messageCopy];
                  }

                  else
                  {
                    v35 = v32;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v36 = v35;
                    }

                    else
                    {
                      v36 = 0;
                    }

                    v37 = v36;

                    if (v37)
                    {
                      mediaSystemController = [home mediaSystemController];
                      [mediaSystemController _handleAddMediaSystemModel:v37 message:messageCopy];
                    }

                    else
                    {
                      v39 = v35;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v40 = v39;
                      }

                      else
                      {
                        v40 = 0;
                      }

                      v41 = v40;

                      if (!v41)
                      {
                        goto LABEL_57;
                      }

                      networkProtectionGroupRegistry = [home networkProtectionGroupRegistry];
                      [networkProtectionGroupRegistry handleAddOrUpdateAccessoryNetworkProtectionGroupModel:v41 message:messageCopy];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_57:
}

- (HMDHomeObjectChangeHandler)initWithHome:(id)home
{
  homeCopy = home;
  v10.receiver = self;
  v10.super_class = HMDHomeObjectChangeHandler;
  v5 = [(HMDHomeObjectChangeHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
    workQueue = [homeCopy workQueue];
    workQueue = v6->_workQueue;
    v6->_workQueue = workQueue;
  }

  return v6;
}

@end