@interface HMDPrimaryElectionMeshInformation
+ (id)meshInformationFromMessagePayload:(id)a3 home:(id)a4;
+ (id)meshInformationWithMeshController:(id)a3 home:(id)a4;
- (HMDPrimaryElectionMeshInformation)initWithResponder:(id)a3 leader:(id)a4 primary:(id)a5 reachableIPAccessories:(unint64_t)a6 residentsInMesh:(unint64_t)a7;
- (id)description;
- (id)toMessagePayload;
@end

@implementation HMDPrimaryElectionMeshInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HMDPrimaryElectionMeshInformation *)self responder];
  v7 = [v6 shortDescription];
  v8 = [(HMDPrimaryElectionMeshInformation *)self leader];
  v9 = [v8 shortDescription];
  v10 = [(HMDPrimaryElectionMeshInformation *)self primary];
  v11 = [v10 shortDescription];
  v12 = [v3 stringWithFormat:@"<%@ responder: %@, leader: %@, primary: %@, IP accessories: %d residents: %d>", v5, v7, v9, v11, -[HMDPrimaryElectionMeshInformation reachableIPAccessories](self, "reachableIPAccessories"), -[HMDPrimaryElectionMeshInformation residentsInMesh](self, "residentsInMesh")];

  return v12;
}

- (id)toMessagePayload
{
  v22[3] = *MEMORY[0x277D85DE8];
  v21[0] = @"r";
  v3 = [(HMDPrimaryElectionMeshInformation *)self responder];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];
  v22[0] = v5;
  v21[1] = @"rip";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPrimaryElectionMeshInformation reachableIPAccessories](self, "reachableIPAccessories")}];
  v22[1] = v6;
  v21[2] = @"res";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPrimaryElectionMeshInformation residentsInMesh](self, "residentsInMesh")}];
  v22[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v9 = [v8 mutableCopy];

  v10 = [(HMDPrimaryElectionMeshInformation *)self leader];

  if (v10)
  {
    v11 = [(HMDPrimaryElectionMeshInformation *)self leader];
    v12 = [v11 identifier];
    v13 = [v12 UUIDString];
    [v9 setObject:v13 forKeyedSubscript:@"l"];
  }

  v14 = [(HMDPrimaryElectionMeshInformation *)self primary];

  if (v14)
  {
    v15 = [(HMDPrimaryElectionMeshInformation *)self primary];
    v16 = [v15 identifier];
    v17 = [v16 UUIDString];
    [v9 setObject:v17 forKeyedSubscript:@"p"];
  }

  v18 = [v9 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDPrimaryElectionMeshInformation)initWithResponder:(id)a3 leader:(id)a4 primary:(id)a5 reachableIPAccessories:(unint64_t)a6 residentsInMesh:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v22.receiver = self;
  v22.super_class = HMDPrimaryElectionMeshInformation;
  v15 = [(HMDPrimaryElectionMeshInformation *)&v22 init];
  responder = v15->_responder;
  v15->_responder = v12;
  v17 = v12;

  leader = v15->_leader;
  v15->_leader = v13;
  v19 = v13;

  primary = v15->_primary;
  v15->_primary = v14;

  v15->_reachableIPAccessories = a6;
  v15->_residentsInMesh = a7;
  return v15;
}

+ (id)meshInformationFromMessagePayload:(id)a3 home:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 residentDeviceManager];
  v8 = [v7 residentDevices];
  v9 = [v5 hmf_UUIDForKey:@"r"];
  v10 = findResidentDevice(v8, v9);
  if (v10)
  {
    v11 = [v5 hmf_UUIDForKey:@"l"];
    if (v11)
    {
      v12 = findResidentDevice(v8, v11);
      if (!v12)
      {
        v44 = v11;
        v13 = objc_autoreleasePoolPush();
        v14 = objc_opt_class();
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543618;
          v51 = v16;
          v52 = 2114;
          v53 = v44;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to find leader identifier: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v17 = 0;
        v11 = v44;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = 0;
    }

    v22 = [v5 hmf_UUIDForKey:@"p"];
    v47 = v22;
    if (v22)
    {
      v22 = findResidentDevice(v8, v22);
      if (!v22)
      {
        v46 = v11;
        v33 = v6;
        v34 = objc_autoreleasePoolPush();
        v35 = objc_opt_class();
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v37 = v43 = v12;
          *buf = 138543618;
          v51 = v37;
          v52 = 2114;
          v53 = v47;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Unable to find leader identifier: %{public}@", buf, 0x16u);

          v12 = v43;
        }

        objc_autoreleasePoolPop(v34);
        v17 = 0;
        v6 = v33;
        v11 = v46;
        goto LABEL_25;
      }
    }

    v41 = v22;
    v42 = v12;
    v49 = 0;
    v23 = [v5 hmf_integerForKey:@"rip" error:&v49];
    v24 = v49;
    if (v24)
    {
      v25 = v24;
      v40 = v6;
      v26 = objc_autoreleasePoolPush();
      v27 = objc_opt_class();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v29 = v45 = v11;
        *buf = 138543618;
        v51 = v29;
        v52 = 2112;
        v53 = v25;
        v30 = "%{public}@Unable to find reachable IP accessories: %@";
LABEL_19:
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0x16u);

        v11 = v45;
      }
    }

    else
    {
      v48 = 0;
      v31 = [v5 hmf_integerForKey:@"res" error:&v48];
      v32 = v48;
      if (!v32)
      {
        v17 = [[HMDPrimaryElectionMeshInformation alloc] initWithResponder:v10 leader:v42 primary:v41 reachableIPAccessories:v23 residentsInMesh:v31];
        goto LABEL_21;
      }

      v25 = v32;
      v40 = v6;
      v26 = objc_autoreleasePoolPush();
      v27 = objc_opt_class();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v29 = v45 = v11;
        *buf = 138543618;
        v51 = v29;
        v52 = 2112;
        v53 = v25;
        v30 = "%{public}@Unable to find residents in mesh: %@";
        goto LABEL_19;
      }
    }

    objc_autoreleasePoolPop(v26);
    v17 = 0;
    v6 = v40;
LABEL_21:

    v12 = v42;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = objc_opt_class();
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v21;
    v52 = 2114;
    v53 = v9;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find responder identifier: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v17 = 0;
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)meshInformationWithMeshController:(id)a3 home:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 residentDeviceManager];
  v8 = [v7 residentDevices];
  v9 = [v8 na_firstObjectPassingTest:&__block_literal_global_171147];
  if (v9)
  {
    if ([v5 isLeader])
    {
      v10 = v9;
    }

    else
    {
      v16 = [v5 leaderNode];
      v10 = [v8 hmd_residentDeviceForMeshNode:v16];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = 0;
    v17 = [v6 accessories];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__HMDPrimaryElectionMeshInformation_meshInformationWithMeshController_home___block_invoke_1;
    v24[3] = &unk_278684FE8;
    v24[4] = &buf;
    [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

    v18 = [v5 meshNodes];
    v19 = [v18 count];

    v20 = [HMDPrimaryElectionMeshInformation alloc];
    v21 = [v7 primaryResidentDevice];
    v15 = [(HMDPrimaryElectionMeshInformation *)v20 initWithResponder:v9 leader:v10 primary:v21 reachableIPAccessories:*(*(&buf + 1) + 24) residentsInMesh:v19 + 1];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_class();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to find responder, not creating mesh information", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

void __76__HMDPrimaryElectionMeshInformation_meshInformationWithMeshController_home___block_invoke_1(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hostAccessory];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 && [v5 hasIPLink] && objc_msgSend(v5, "isReachable"))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

@end