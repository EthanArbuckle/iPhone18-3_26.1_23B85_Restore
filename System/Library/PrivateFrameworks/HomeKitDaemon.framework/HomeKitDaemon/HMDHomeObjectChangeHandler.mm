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
  v112 = *MEMORY[0x277D85DE8];
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
      v107 = v20;
      v108 = 2112;
      v109 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Received room transaction, applying it to room: %@", buf, 0x16u);
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
      v99 = v12;
      v29 = v21;
      v30 = home;
      v31 = messageCopy;
      v33 = v32 = updateCopy;
      *buf = 138543618;
      v107 = v33;
      v108 = 2112;
      v109 = v25;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Received zone transaction, applying it to zone: %@", buf, 0x16u);

      updateCopy = v32;
      messageCopy = v31;
      home = v30;
      v21 = v29;
      v12 = v99;
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

  v100 = updateCopy;
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
      v107 = v40;
      v108 = 2112;
      v109 = v25;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Received serviceGroup transaction, applying it to serviceGroup: %@", buf, 0x16u);
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
        updateCopy = v100;
        [v50 transactionObjectUpdated:v100 newValues:v21 message:messageCopy];
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

    updateCopy = v100;
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
      updateCopy = v100;
      goto LABEL_27;
    }

LABEL_35:
    [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v36 message:messageCopy];
    updateCopy = v100;
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
      updateCopy = v100;
      [v60 transactionObjectUpdated:v100 newValues:v21 message:messageCopy];
    }

    else
    {
      v68 = objc_autoreleasePoolPush();
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v70 = v98 = v68;
        parentUUID2 = [v58 parentUUID];
        instanceID = [v58 instanceID];
        *buf = 138543874;
        v107 = v70;
        v108 = 2112;
        v109 = parentUUID2;
        v110 = 2112;
        v111 = instanceID;
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory %@ to add/update service %@", buf, 0x20u);

        v68 = v98;
      }

      objc_autoreleasePoolPop(v68);
      updateCopy = v100;
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
      v94 = v61;
      [home usersIncludingPendingUsers:1];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      obj = v104 = 0u;
      v97 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
      if (v97)
      {
        v96 = *v102;
LABEL_73:
        v63 = 0;
        while (1)
        {
          if (*v102 != v96)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v101 + 1) + 8 * v63);
          uuid6 = [v64 uuid];
          uuid7 = [v21 uuid];
          v67 = [uuid6 isEqual:uuid7];

          if (v67)
          {
            break;
          }

          if (v97 == ++v63)
          {
            v97 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
            if (v97)
            {
              goto LABEL_73;
            }

            goto LABEL_79;
          }
        }

        v73 = v64;

        updateCopy = v100;
        if (!v73)
        {
          goto LABEL_86;
        }

        [v73 transactionObjectUpdated:v100 newValues:v94 message:messageCopy];
      }

      else
      {
LABEL_79:

        updateCopy = v100;
LABEL_86:
        [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v21 message:messageCopy];
      }
    }

    else
    {
      v21 = v61;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v74 = v21;
      }

      else
      {
        v74 = 0;
      }

      v75 = v74;

      if (v75)
      {
        uuid8 = [v75 uuid];
        v77 = [home outgoingInvitationWithUUID:uuid8];

        if (v77)
        {
          updateCopy = v100;
          [v77 transactionObjectUpdated:v100 newValues:v21 message:messageCopy];
        }

        else
        {
          [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v75 message:messageCopy];
          updateCopy = v100;
        }
      }

      else
      {
        v21 = v21;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v78 = v21;
        }

        else
        {
          v78 = 0;
        }

        v79 = v78;

        if (!v79)
        {
          v80 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v81 = v80;
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;
          v21 = v80;

          if (v82)
          {
            uuid9 = [v82 uuid];
            v84 = [home mediaSystemWithUUID:uuid9];

            if (v84)
            {
              [v84 transactionObjectUpdated:v100 newValues:v80 message:messageCopy];
            }

            else
            {
              mediaSystemController = [home mediaSystemController];
              [mediaSystemController _handleAddMediaSystemModel:v82 message:messageCopy];
            }
          }

          else
          {
            v21 = v80;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v85 = v21;
            }

            else
            {
              v85 = 0;
            }

            v86 = v85;

            if (v86)
            {
              networkProtectionGroupRegistry = [home networkProtectionGroupRegistry];
              [networkProtectionGroupRegistry handleAddOrUpdateAccessoryNetworkProtectionGroupModel:v86 message:messageCopy];

              updateCopy = v100;
              goto LABEL_37;
            }

            v89 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v91 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              v92 = HMFGetLogIdentifier();
              *buf = 138543874;
              v107 = v92;
              v108 = 2112;
              v109 = v21;
              v110 = 2112;
              v111 = objc_opt_class();
              v93 = v111;
              _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v89);
            v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [messageCopy respondWithError:v21];
          }

          updateCopy = v100;
          goto LABEL_37;
        }

        [home _handleUpdateAppDataModel:v79 message:messageCopy];
      }
    }
  }

LABEL_37:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)handleObjectRemove:(id)remove message:(id)message
{
  v48 = *MEMORY[0x277D85DE8];
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
LABEL_30:
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

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v12;
  }

  else
  {
    v39 = 0;
  }

  v22 = v39;

  if (v22)
  {
    goto LABEL_30;
  }

  v40 = objc_autoreleasePoolPush();
  selfCopy = self;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = HMFGetLogIdentifier();
    v44 = 138543618;
    v45 = v43;
    v46 = 2112;
    v47 = v12;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [HMDHome transactionObjectRemoved]", &v44, 0x16u);
  }

  objc_autoreleasePoolPop(v40);
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
  v47 = addCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v47;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [home _handleAddRoomModel:v10 message:messageCopy];
    goto LABEL_57;
  }

  v11 = v47;
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
    goto LABEL_57;
  }

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
    goto LABEL_57;
  }

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
    goto LABEL_57;
  }

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
    goto LABEL_57;
  }

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
    goto LABEL_57;
  }

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
    goto LABEL_57;
  }

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
    goto LABEL_57;
  }

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
    goto LABEL_57;
  }

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
LABEL_56:

    goto LABEL_57;
  }

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

  if (v41)
  {
    mediaSystemController = [home networkProtectionGroupRegistry];
    [mediaSystemController handleAddOrUpdateAccessoryNetworkProtectionGroupModel:v41 message:messageCopy];
    goto LABEL_56;
  }

  v42 = v39;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;

  if (!v44)
  {
    goto LABEL_58;
  }

  parentUUID = [v44 parentUUID];
  v46 = [home accessoryWithUUID:parentUUID];

  [v46 transactionObjectUpdated:0 newValues:v44 message:messageCopy];
LABEL_57:

LABEL_58:
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