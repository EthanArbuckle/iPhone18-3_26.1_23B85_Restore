@interface ATVModel
+ (unint64_t)atvStateFromState:(BTStatus *)a3;
+ (void)addTuple:(id)a3 ToLUT:(id)a4;
- (ATVModel)init;
- (id)findTupleForATVState:(unint64_t)a3;
@end

@implementation ATVModel

- (id)findTupleForATVState:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [HAPBTLETuple atvState2String:a3];
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[ATVModel] findTupleForState state %@\n", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(ATVModel *)self atvLUT];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11 = [v9 objectForKey:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (ATVModel)init
{
  v65[4] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = ATVModel;
  v2 = [(ATVModel *)&v58 init];
  v3 = v2;
  if (v2)
  {
    v52 = v2;
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:20];
    v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v5 = [HAPBTLETuple makeTupleWithATVState:2 MaxHAPConnections:3];
    v65[0] = v5;
    v6 = [HAPBTLETuple makeTupleWithATVState:66 MaxHAPConnections:2];
    v65[1] = v6;
    v7 = [HAPBTLETuple makeTupleWithATVState:4 MaxHAPConnections:2];
    v65[2] = v7;
    v8 = [HAPBTLETuple makeTupleWithATVState:68 MaxHAPConnections:1];
    v65[3] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];
    [v53 addObjectsFromArray:v9];

    v50 = [HAPBTLETuple makeTupleWithATVState:258 MaxHAPConnections:2];
    v64[0] = v50;
    v49 = [HAPBTLETuple makeTupleWithATVState:514 MaxHAPConnections:1];
    v64[1] = v49;
    v48 = [HAPBTLETuple makeTupleWithATVState:1026 MaxHAPConnections:1];
    v64[2] = v48;
    v47 = [HAPBTLETuple makeTupleWithATVState:2050 MaxHAPConnections:1];
    v64[3] = v47;
    v46 = [HAPBTLETuple makeTupleWithATVState:322 MaxHAPConnections:1];
    v64[4] = v46;
    v10 = [HAPBTLETuple makeTupleWithATVState:578 MaxHAPConnections:1];
    v64[5] = v10;
    v11 = [HAPBTLETuple makeTupleWithATVState:1090 MaxHAPConnections:1];
    v64[6] = v11;
    v12 = [HAPBTLETuple makeTupleWithATVState:386 MaxHAPConnections:1];
    v64[7] = v12;
    v13 = [HAPBTLETuple makeTupleWithATVState:450 MaxHAPConnections:1];
    v64[8] = v13;
    v14 = [HAPBTLETuple makeTupleWithATVState:260 MaxHAPConnections:1];
    v64[9] = v14;
    v15 = [HAPBTLETuple makeTupleWithATVState:516 MaxHAPConnections:1];
    v64[10] = v15;
    v16 = [HAPBTLETuple makeTupleWithATVState:324 MaxHAPConnections:1];
    v64[11] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:12];
    [v53 addObjectsFromArray:v17];

    v51 = [HAPBTLETuple makeTupleWithATVState:10 MaxHAPConnections:2];
    v63[0] = v51;
    v18 = [HAPBTLETuple makeTupleWithATVState:18 MaxHAPConnections:1];
    v63[1] = v18;
    v19 = [HAPBTLETuple makeTupleWithATVState:74 MaxHAPConnections:1];
    v63[2] = v19;
    v20 = [HAPBTLETuple makeTupleWithATVState:82 MaxHAPConnections:1];
    v63[3] = v20;
    v21 = [HAPBTLETuple makeTupleWithATVState:138 MaxHAPConnections:1];
    v63[4] = v21;
    v22 = [HAPBTLETuple makeTupleWithATVState:146 MaxHAPConnections:1];
    v63[5] = v22;
    v23 = [HAPBTLETuple makeTupleWithATVState:202 MaxHAPConnections:1];
    v63[6] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:7];
    [v53 addObjectsFromArray:v24];

    v25 = [HAPBTLETuple makeTupleWithATVState:130 MaxHAPConnections:1];
    v62[0] = v25;
    v26 = [HAPBTLETuple makeTupleWithATVState:194 MaxHAPConnections:1];
    v62[1] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    [v53 addObjectsFromArray:v27];

    v28 = [HAPBTLETuple makeTupleWithATVState:4098 MaxHAPConnections:1];
    v61[0] = v28;
    v29 = [HAPBTLETuple makeTupleWithATVState:8194 MaxHAPConnections:1];
    v61[1] = v29;
    v30 = [HAPBTLETuple makeTupleWithATVState:16386 MaxHAPConnections:1];
    v61[2] = v30;
    v31 = [HAPBTLETuple makeTupleWithATVState:4162 MaxHAPConnections:1];
    v61[3] = v31;
    v32 = [HAPBTLETuple makeTupleWithATVState:8258 MaxHAPConnections:1];
    v61[4] = v32;
    v33 = [HAPBTLETuple makeTupleWithATVState:4100 MaxHAPConnections:1];
    v61[5] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:6];
    [v53 addObjectsFromArray:v34];

    v35 = [HAPBTLETuple makeTupleWithATVState:1 MaxHAPConnections:5];
    v60 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    [v53 addObjectsFromArray:v36];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v37 = v53;
    v38 = [v37 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v55;
      do
      {
        v41 = 0;
        do
        {
          if (*v55 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [ATVModel addTuple:*(*(&v54 + 1) + 8 * v41++) ToLUT:v4];
        }

        while (v39 != v41);
        v39 = [v37 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v39);
    }

    v42 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
    v3 = v52;
    atvLUT = v52->_atvLUT;
    v52->_atvLUT = v42;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (unint64_t)atvStateFromState:(BTStatus *)a3
{
  leRemote = a3->leRemote;
  if (a3->leRemote)
  {
    if (leRemote == 2)
    {
      v4 = 4;
      goto LABEL_11;
    }

    if (leRemote != 1)
    {
      return 0;
    }
  }

  else
  {
    if (!a3->connectedDevices && a3->lowEnergyConnections == a3->hk)
    {
      v4 = 0;
      goto LABEL_11;
    }

    a3->leRemote = 1;
  }

  v4 = 2;
LABEL_11:
  a2dp = a3->a2dp;
  if (a2dp)
  {
    if (a2dp != 1)
    {
      return 0;
    }

    v4 |= 0x80uLL;
  }

  btGC = a3->btGC;
  if (btGC <= 1)
  {
    if (btGC)
    {
      if (btGC != 1)
      {
        return 0;
      }

      v4 |= 0x100uLL;
    }
  }

  else
  {
    switch(btGC)
    {
      case 2:
        v4 |= 0x200uLL;
        break;
      case 3:
        v4 |= 0x400uLL;
        break;
      case 4:
        v4 |= 0x800uLL;
        break;
      default:
        return 0;
    }
  }

  btKB = a3->btKB;
  if (btKB)
  {
    if (btKB != 1)
    {
      return 0;
    }

    v4 |= 0x40uLL;
  }

  hk = a3->hk;
  if (hk > 2)
  {
    switch(hk)
    {
      case 3:
        v4 |= 0x20000uLL;
        break;
      case 4:
        v4 |= 0x40000uLL;
        break;
      case 5:
        v4 |= 0x80000uLL;
        break;
      default:
        return 0;
    }
  }

  else if (hk)
  {
    if (hk == 1)
    {
      v4 |= 0x8000uLL;
    }

    else
    {
      if (hk != 2)
      {
        return 0;
      }

      v4 |= 0x10000uLL;
    }
  }

  leAcc = a3->leAcc;
  if (leAcc > 1)
  {
    if (leAcc == 2)
    {
      v4 |= 0x10uLL;
    }

    else
    {
      if (leAcc != 3)
      {
        return 0;
      }

      v4 |= 0x20uLL;
    }
  }

  else if (leAcc)
  {
    if (leAcc != 1)
    {
      return 0;
    }

    v4 |= 8uLL;
  }

  eAcc = a3->eAcc;
  if (eAcc <= 1)
  {
    if (!eAcc)
    {
      goto LABEL_56;
    }

    if (eAcc == 1)
    {
      v4 |= 0x1000uLL;
      goto LABEL_56;
    }

    return 0;
  }

  if (eAcc == 2)
  {
    v4 |= 0x2000uLL;
  }

  else
  {
    if (eAcc != 3)
    {
      return 0;
    }

    v4 |= 0x4000uLL;
  }

LABEL_56:
  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (void)addTuple:(id)a3 ToLUT:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (v10)
  {
    if ([v10 atvState])
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "atvState")}];
      [v5 setObject:v10 forKey:v6];

      if ([v10 maxHAPConnections] >= 1)
      {
        v7 = 0;
        do
        {
          v8 = +[HAPBTLETuple makeTupleWithATVState:MaxHAPConnections:](HAPBTLETuple, "makeTupleWithATVState:MaxHAPConnections:", hkConfig_21606[v7] | [v10 atvState], objc_msgSend(v10, "maxHAPConnections"));
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "atvState")}];
          [v5 setObject:v8 forKey:v9];

          ++v7;
        }

        while (v7 < [v10 maxHAPConnections]);
      }
    }
  }
}

@end