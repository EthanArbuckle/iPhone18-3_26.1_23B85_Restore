@interface HAPBLEPeripheral
+ (id)uuidForBTLEPeripheral:(id)a3;
- (BOOL)isBroadcasting;
- (BOOL)isEqual:(id)a3;
- (BOOL)isReachable;
- (BOOL)updateWithPeripheral:(id)a3;
- (HAPBLEPeripheral)initWithName:(id)a3 peripheralUUID:(id)a4 identifier:(id)a5 hapVersion:(id)a6 hkType:(id)a7 advInterval:(id)a8 statusFlags:(id)a9 category:(id)a10 stateNumber:(id)a11 configNumber:(id)a12 setupHash:(id)a13 encryptedPayload:(id)a14 whbStableIdentifier:(id)a15 advDeviceAddress:(id)a16;
- (NSArray)peripheralUUIDs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)shortDescription;
- (int64_t)compareConfigNumber:(id)a3;
- (int64_t)compareStateNumber:(id)a3;
- (unint64_t)hash;
- (void)_updateAverageRSSIWithRSSI:(id)a3;
- (void)connectedToCBPeripheral:(id)a3 error:(id)a4;
- (void)disconnectedFromCBPeripheral:(id)a3 shouldRemove:(BOOL)a4;
- (void)mergeWithPeripheral:(id)a3;
- (void)reset;
- (void)updateStateNumber:(id)a3;
@end

@implementation HAPBLEPeripheral

- (void)disconnectedFromCBPeripheral:(id)a3 shouldRemove:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  [(HAPBLEPeripheral *)self setCbPeripheral:0];
  if (v8 && v4)
  {
    os_unfair_lock_lock_with_options();
    cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
    v7 = [v8 identifier];
    [(NSMutableArray *)cbPeripheralUUIDs removeObject:v7];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)connectedToCBPeripheral:(id)a3 error:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = v14;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v8 = [(HAPBLEPeripheral *)self cbPeripheral];

    if (v8)
    {
      cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
      v10 = [(HAPBLEPeripheral *)self cbPeripheral];
      v11 = [v10 identifier];
      [(NSMutableArray *)cbPeripheralUUIDs removeObject:v11];
    }

    if (v14)
    {
      v12 = self->_cbPeripheralUUIDs;
      v13 = [v14 identifier];
      [(NSMutableArray *)v12 removeObject:v13];
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  [(HAPBLEPeripheral *)self setCbPeripheral:v7];
}

- (void)mergeWithPeripheral:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_101;
  }

  v5 = [(HAPBLEPeripheral *)self identifier];
  v6 = [(HAPBLEPeripheral *)v4 identifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_101;
  }

  [(HAPBLEPeripheral *)v4 lastSeen];
  v9 = v8;
  [(HAPBLEPeripheral *)self lastSeen];
  v11 = v10;
  if (v9 > v10)
  {
    [(HAPBLEPeripheral *)v4 lastSeen];
    [(HAPBLEPeripheral *)self setLastSeen:?];
    v12 = [(HAPBLEPeripheral *)v4 encryptedPayload];
    [(HAPBLEPeripheral *)self setEncryptedPayload:v12];

    [(HAPBLEPeripheral *)self setIsCached:[(HAPBLEPeripheral *)v4 isCached]];
    v13 = [(HAPBLEPeripheral *)v4 averageRSSI];

    if (v13)
    {
      v14 = [(HAPBLEPeripheral *)v4 averageRSSI];
      [(HAPBLEPeripheral *)self _updateAverageRSSIWithRSSI:v14];
    }

    v15 = [(HAPBLEPeripheral *)v4 cbPeripheral];
    if (v15)
    {
      v16 = v15;
      v17 = [(HAPBLEPeripheral *)self cbPeripheral];

      if (!v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [(HAPBLEPeripheral *)v19 shortDescription];
          v23 = [(HAPBLEPeripheral *)v4 cbPeripheral];
          *buf = 138543874;
          v102 = v21;
          v103 = 2112;
          v104 = v22;
          v105 = 2112;
          v106 = v23;
          _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating the BLE peripheral: %@ with CBPeripheral: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v24 = [(HAPBLEPeripheral *)v4 cbPeripheral];
        [(HAPBLEPeripheral *)v19 setCbPeripheral:v24];
      }
    }
  }

  v25 = [(HAPBLEPeripheral *)v4 identifier];
  v26 = v25;
  if (v9 <= v11 && v25)
  {
    v27 = [(HAPBLEPeripheral *)self identifier];

    if (!v27)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v26)
    {
LABEL_16:
      v28 = [(HAPBLEPeripheral *)v4 identifier];
      [(HAPBLEPeripheral *)self setIdentifier:v28];
    }
  }

  v29 = [(HAPBLEPeripheral *)v4 whbStableIdentifier];
  v30 = v29;
  if (v9 <= v11 && v29)
  {
    v31 = [(HAPBLEPeripheral *)self whbStableIdentifier];

    if (!v31)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v30)
    {
LABEL_22:
      v32 = [(HAPBLEPeripheral *)v4 whbStableIdentifier];
      [(HAPBLEPeripheral *)self setWhbStableIdentifier:v32];
    }
  }

  v33 = [(HAPBLEPeripheral *)v4 hkType];
  v34 = v33;
  if (v9 <= v11 && v33)
  {
    v35 = [(HAPBLEPeripheral *)self hkType];

    if (!v35)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v34)
    {
LABEL_28:
      v36 = [(HAPBLEPeripheral *)v4 hkType];
      [(HAPBLEPeripheral *)self setHkType:v36];
    }
  }

  v37 = [(HAPBLEPeripheral *)v4 advInterval];
  v38 = v37;
  if (v9 <= v11 && v37)
  {
    v39 = [(HAPBLEPeripheral *)self advInterval];

    if (!v39)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v38)
    {
LABEL_34:
      v40 = [(HAPBLEPeripheral *)v4 advInterval];
      [(HAPBLEPeripheral *)self setAdvInterval:v40];
    }
  }

  if ([(HAPBLEPeripheral *)v4 advertisementFormat]&& (v9 > v11 || ![(HAPBLEPeripheral *)self advertisementFormat]))
  {
    [(HAPBLEPeripheral *)self setAdvertisementFormat:[(HAPBLEPeripheral *)v4 advertisementFormat]];
  }

  v41 = [(HAPBLEPeripheral *)v4 statusFlags];
  v42 = v41;
  if (v9 <= v11 && v41)
  {
    v43 = [(HAPBLEPeripheral *)self statusFlags];

    if (!v43)
    {
      goto LABEL_44;
    }
  }

  else
  {

    if (v42)
    {
LABEL_44:
      v44 = [(HAPBLEPeripheral *)v4 statusFlags];
      [(HAPBLEPeripheral *)self setStatusFlags:v44];
    }
  }

  v45 = [(HAPBLEPeripheral *)v4 category];
  v46 = v45;
  if (v9 <= v11 && v45)
  {
    v47 = [(HAPBLEPeripheral *)self category];

    if (!v47)
    {
      goto LABEL_50;
    }
  }

  else
  {

    if (v46)
    {
LABEL_50:
      v48 = [(HAPBLEPeripheral *)v4 category];
      [(HAPBLEPeripheral *)self setCategory:v48];
    }
  }

  v49 = [(HAPBLEPeripheral *)v4 stateNumber];
  v50 = v49;
  if (v9 <= v11 && v49)
  {
    v51 = [(HAPBLEPeripheral *)self stateNumber];

    if (v51)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if (!v50)
    {
      goto LABEL_59;
    }
  }

  if (![(HAPBLEPeripheral *)v4 isCached]|| ([(HAPBLEPeripheral *)v4 stateNumber], v52 = objc_claimAutoreleasedReturnValue(), v53 = [(HAPBLEPeripheral *)self compareStateNumber:v52], v52, v53 == -1))
  {
    v54 = [(HAPBLEPeripheral *)v4 stateNumber];
    [(HAPBLEPeripheral *)self setStateNumber:v54];
  }

LABEL_59:
  v55 = [(HAPBLEPeripheral *)v4 configNumber];
  v56 = v55;
  if (v9 <= v11 && v55)
  {
    v57 = [(HAPBLEPeripheral *)self configNumber];

    if (v57)
    {
      goto LABEL_67;
    }
  }

  else
  {

    if (!v56)
    {
      goto LABEL_67;
    }
  }

  if (![(HAPBLEPeripheral *)v4 isCached]|| ([(HAPBLEPeripheral *)v4 configNumber], v58 = objc_claimAutoreleasedReturnValue(), v59 = [(HAPBLEPeripheral *)self compareConfigNumber:v58], v58, v59 == -1))
  {
    v60 = [(HAPBLEPeripheral *)v4 configNumber];
    [(HAPBLEPeripheral *)self setConfigNumber:v60];
  }

LABEL_67:
  v61 = [(HAPBLEPeripheral *)v4 setupHash];
  v62 = v61;
  if (v9 <= v11 && v61)
  {
    v63 = [(HAPBLEPeripheral *)self setupHash];

    if (!v63)
    {
      goto LABEL_72;
    }
  }

  else
  {

    if (v62)
    {
LABEL_72:
      v64 = [(HAPBLEPeripheral *)v4 setupHash];
      [(HAPBLEPeripheral *)self setSetupHash:v64];
    }
  }

  v65 = [(HAPBLEPeripheral *)v4 averageRSSI];
  v66 = v65;
  if (v9 <= v11 && v65)
  {
    v67 = [(HAPBLEPeripheral *)self averageRSSI];

    if (!v67)
    {
      goto LABEL_78;
    }
  }

  else
  {

    if (v66)
    {
LABEL_78:
      v68 = [(HAPBLEPeripheral *)v4 averageRSSI];
      [(HAPBLEPeripheral *)self setAverageRSSI:v68];
    }
  }

  v69 = [(HAPBLEPeripheral *)self name];
  v70 = [v69 length];
  v71 = [(HAPBLEPeripheral *)v4 name];
  v72 = [v71 length];

  if (v70 < v72)
  {
    v73 = [(HAPBLEPeripheral *)v4 name];
    [(HAPBLEPeripheral *)self setName:v73];
  }

  v74 = [(HAPBLEPeripheral *)v4 peripheralUUIDs];
  if (v74)
  {
    v75 = v74;
    v76 = [(HAPBLEPeripheral *)self peripheralUUIDs];
    v77 = [(HAPBLEPeripheral *)v4 peripheralUUIDs];
    v78 = [v76 isEqual:v77];

    if ((v78 & 1) == 0)
    {
      if (v9 <= v11)
      {
        v79 = v4;
      }

      else
      {
        v79 = self;
      }

      if (v9 <= v11)
      {
        v80 = self;
      }

      else
      {
        v80 = v4;
      }

      v81 = [(HAPBLEPeripheral *)v79 peripheralUUIDs];
      v82 = [v81 mutableCopy];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v83 = [(HAPBLEPeripheral *)v80 peripheralUUIDs];
      v84 = [v83 countByEnumeratingWithState:&v96 objects:v100 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = *v97;
        do
        {
          for (i = 0; i != v85; ++i)
          {
            if (*v97 != v86)
            {
              objc_enumerationMutation(v83);
            }

            v88 = *(*(&v96 + 1) + 8 * i);
            [v82 removeObject:v88];
            [v82 addObject:v88];
          }

          v85 = [v83 countByEnumeratingWithState:&v96 objects:v100 count:16];
        }

        while (v85);
      }

      v89 = [(HAPBLEPeripheral *)self cbPeripheral];
      v90 = [v89 state];

      if (v90)
      {
        v91 = [(HAPBLEPeripheral *)self cbPeripheral];
        v92 = [v91 identifier];
        [v82 removeObject:v92];

        v93 = [(HAPBLEPeripheral *)self cbPeripheral];
        v94 = [v93 identifier];
        [v82 addObject:v94];
      }

      if ([v82 count] >= 6)
      {
        [v82 removeObjectsInRange:{0, objc_msgSend(v82, "count") - 5}];
      }

      os_unfair_lock_lock_with_options();
      objc_storeStrong(&self->_cbPeripheralUUIDs, v82);
      os_unfair_lock_unlock(&self->_lock);
    }
  }

LABEL_101:

  v95 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  os_unfair_lock_lock_with_options();
  self->_lastSeen = 0.0;
  encryptedPayload = self->_encryptedPayload;
  self->_encryptedPayload = 0;

  averageRSSI = self->_averageRSSI;
  self->_averageRSSI = &unk_283EA9878;

  [(NSMutableArray *)self->_cbPeripheralUUIDs removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HAPBLEPeripheral);
  v5 = [(HAPBLEPeripheral *)self identifier];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [(HAPBLEPeripheral *)self uniqueBTIdentifier];
  uniqueBTIdentifier = v4->_uniqueBTIdentifier;
  v4->_uniqueBTIdentifier = v7;

  v9 = [(HAPBLEPeripheral *)self advDeviceAddress];
  advDeviceAddress = v4->_advDeviceAddress;
  v4->_advDeviceAddress = v9;

  v11 = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v12 = [v11 mutableCopy];
  cbPeripheralUUIDs = v4->_cbPeripheralUUIDs;
  v4->_cbPeripheralUUIDs = v12;

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if ((HAPIsHH2Enabled_hh2Enabled & 1) == 0)
  {
    v14 = [(HAPBLEPeripheral *)self cbPeripheral];
    cbPeripheral = v4->_cbPeripheral;
    v4->_cbPeripheral = v14;
  }

  [(HAPBLEPeripheral *)v4 mergeWithPeripheral:self];
  return v4;
}

- (BOOL)isReachable
{
  Current = CFAbsoluteTimeGetCurrent();
  [(HAPBLEPeripheral *)self lastSeen];
  if (v4 <= 0.0)
  {
    return 0;
  }

  [(HAPBLEPeripheral *)self lastSeen];
  return Current - v5 < 600.0;
}

- (NSArray)peripheralUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cbPeripheralUUIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isBroadcasting
{
  v2 = [(HAPBLEPeripheral *)self encryptedPayload];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateAverageRSSIWithRSSI:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(HAPBLEPeripheral *)self averageRSSI];
    if (v5)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = [(HAPBLEPeripheral *)self averageRSSI];
      v8 = [v6 numberWithInteger:{(objc_msgSend(v9, "integerValue") + objc_msgSend(v7, "integerValue")) / 2}];
      [(HAPBLEPeripheral *)self setAverageRSSI:v8];
    }

    else
    {
      [(HAPBLEPeripheral *)self setAverageRSSI:v9];
    }

    v4 = v9;
  }
}

- (BOOL)updateWithPeripheral:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 length];
  v7 = [(HAPBLEPeripheral *)self name];
  v8 = [v7 length];

  if (v6 > v8)
  {
    v9 = [v4 name];
    [(HAPBLEPeripheral *)self setName:v9];
  }

  v10 = [v4 encryptedPayload];

  if (v10)
  {
    v11 = [(HAPBLEPeripheral *)self encryptedPayload];
    v12 = [v4 encryptedPayload];
    v13 = [v11 isEqualToData:v12];

    v14 = v13 ^ 1;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v16 = [(HAPBLEPeripheral *)self configNumber];
    v17 = [v4 configNumber];
    if ([v16 isEqual:v17])
    {
      v18 = [(HAPBLEPeripheral *)self stateNumber];
      v19 = [v4 stateNumber];
      if ([v18 isEqual:v19])
      {
        v20 = [(HAPBLEPeripheral *)self peripheralUUIDs];
        v21 = [v4 peripheralUUIDs];
        v22 = [v21 lastObject];
        if ([v20 containsObject:v22])
        {
          [(HAPBLEPeripheral *)self lastSeen];
          v14 = Current - v23 >= 600.0;
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {

      v14 = 1;
    }
  }

  [(HAPBLEPeripheral *)self mergeWithPeripheral:v4];

  return v14;
}

- (void)updateStateNumber:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAPBLEPeripheral *)self compareStateNumber:v4]== -1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HAPBLEPeripheral *)v6 identifier];
      v10 = [(HAPBLEPeripheral *)v6 stateNumber];
      v12 = 138544130;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating state number for tracked peripheral of %@ to sync-up current/new: %{public}@/%{public}@", &v12, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    [(HAPBLEPeripheral *)v6 setStateNumber:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)compareConfigNumber:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEPeripheral *)self configNumber];
  v6 = HAPCompareStateNumberWithRollover(v5, v4, 0xFFuLL);

  return v6;
}

- (int64_t)compareStateNumber:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEPeripheral *)self stateNumber];
  v6 = HAPCompareStateNumberWithRollover(v5, v4, 0xFFuLL);

  return v6;
}

- (id)description
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = MEMORY[0x277CCACA8];
  v27 = HAPIsInternalBuild();
  if (v27)
  {
    v28 = [(HAPBLEPeripheral *)self name];
  }

  else
  {
    v28 = @"<private>";
  }

  v26 = [(HAPBLEPeripheral *)self identifier];
  v25 = [(HAPBLEPeripheral *)self advDeviceAddress];
  v24 = [(HAPBLEPeripheral *)self statusFlags];
  v19 = [v24 unsignedIntValue];
  v29 = [(HAPBLEPeripheral *)self category];
  v21 = [(HAPBLEPeripheral *)self stateNumber];
  v3 = [(HAPBLEPeripheral *)self configNumber];
  v18 = [(HAPBLEPeripheral *)self advertisementFormat];
  [(HAPBLEPeripheral *)self isCached];
  v20 = HMFBooleanToString();
  [(HAPBLEPeripheral *)self lastSeen];
  if (v4 > 0.0 && (v30 = (v4 + *MEMORY[0x277CBECD0]), (v5 = localtime(&v30)) != 0))
  {
    strftime(v31, 0x14uLL, "%Y-%m-%d %H:%M:%S", v5);
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v31];
  }

  else
  {
    v6 = @"N/A";
  }

  v7 = MEMORY[0x277CCABB0];
  v17 = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v16 = [v7 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
  v8 = [(HAPBLEPeripheral *)self cbPeripheral];
  v9 = [v8 identifier];
  v10 = [(HAPBLEPeripheral *)self cbPeripheral];
  v11 = MEMORY[0x277CCABB0];
  v12 = [(HAPBLEPeripheral *)self cbPeripheral];
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "state")}];
  v23 = [v22 stringWithFormat:@"%@ (%@/%@/%p), sf: 0x%0x, c: %@, s#: %@, c#: %@, v: %tu, cached: %@, seen: '%@', periph[%@]: %@ (%p: %@)", v28, v26, v25, self, v19, v29, v21, v3, v18, v20, v6, v16, v9, v10, v13];

  if (v27)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)shortDescription
{
  v16 = MEMORY[0x277CCACA8];
  v19 = HAPIsInternalBuild();
  if (v19)
  {
    v18 = [(HAPBLEPeripheral *)self name];
  }

  else
  {
    v18 = @"<private>";
  }

  v14 = [(HAPBLEPeripheral *)self identifier];
  v3 = [(HAPBLEPeripheral *)self stateNumber];
  [(HAPBLEPeripheral *)self isCached];
  v4 = HMFBooleanToString();
  v5 = MEMORY[0x277CCABB0];
  v15 = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v6 = [v5 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  v7 = [(HAPBLEPeripheral *)self cbPeripheral];
  v8 = [v7 identifier];
  v9 = [(HAPBLEPeripheral *)self cbPeripheral];
  v10 = MEMORY[0x277CCABB0];
  v11 = [(HAPBLEPeripheral *)self cbPeripheral];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "state")}];
  v17 = [v16 stringWithFormat:@"%@/%@ (%@, %@, %p) periph[%@] -> %@ (%p: %@)", v18, v14, v3, v4, self, v6, v8, v9, v12];

  if (v19)
  {
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(HAPBLEPeripheral *)self identifier];
  v4 = [v3 hash];
  v5 = [(HAPBLEPeripheral *)self whbStableIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(HAPBLEPeripheral *)self advDeviceAddress];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(HAPBLEPeripheral *)self identifier], v7 = objc_claimAutoreleasedReturnValue(), [(HAPBLEPeripheral *)v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      v10 = [(HAPBLEPeripheral *)self uniqueBTIdentifier];
      v11 = [(HAPBLEPeripheral *)v6 uniqueBTIdentifier];
      v12 = HMFEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HAPBLEPeripheral)initWithName:(id)a3 peripheralUUID:(id)a4 identifier:(id)a5 hapVersion:(id)a6 hkType:(id)a7 advInterval:(id)a8 statusFlags:(id)a9 category:(id)a10 stateNumber:(id)a11 configNumber:(id)a12 setupHash:(id)a13 encryptedPayload:(id)a14 whbStableIdentifier:(id)a15 advDeviceAddress:(id)a16
{
  v50[1] = *MEMORY[0x277D85DE8];
  v48 = a3;
  v21 = a4;
  v37 = a5;
  v47 = a5;
  v22 = a6;
  v46 = a7;
  v36 = a8;
  v45 = a8;
  v44 = a9;
  v43 = a10;
  v42 = a11;
  v41 = a12;
  v40 = a13;
  v39 = a14;
  v23 = a15;
  v24 = v22;
  v25 = a16;
  v49.receiver = self;
  v49.super_class = HAPBLEPeripheral;
  v26 = [(HAPBLEPeripheral *)&v49 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_name, a3);
    objc_storeStrong(&v27->_hkType, a7);
    objc_storeStrong(&v27->_advInterval, v36);
    v27->_advertisementFormat = [v24 unsignedIntegerValue];
    objc_storeStrong(&v27->_statusFlags, a9);
    objc_storeStrong(&v27->_identifier, v37);
    objc_storeStrong(&v27->_category, a10);
    objc_storeStrong(&v27->_stateNumber, a11);
    objc_storeStrong(&v27->_configNumber, a12);
    objc_storeStrong(&v27->_setupHash, a13);
    objc_storeStrong(&v27->_encryptedPayload, a14);
    v27->_lastSeen = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v27->_whbStableIdentifier, a15);
    objc_storeStrong(&v27->_advDeviceAddress, a16);
    v50[0] = v21;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v29 = [v28 mutableCopy];
    cbPeripheralUUIDs = v27->_cbPeripheralUUIDs;
    v27->_cbPeripheralUUIDs = v29;

    v31 = [objc_opt_class() uuidForBTLEPeripheral:v27];
    uniqueBTIdentifier = v27->_uniqueBTIdentifier;
    v27->_uniqueBTIdentifier = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (id)uuidForBTLEPeripheral:(id)a3
{
  v3 = a3;
  v4 = [v3 uniqueBTIdentifier];

  if (v4)
  {
    v5 = [v3 uniqueBTIdentifier];
  }

  else
  {
    if (HAPIsHH2Enabled_onceToken != -1)
    {
      dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
    }

    if (HAPIsHH2Enabled_hh2Enabled == 1 && ([v3 whbStableIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = [v3 advDeviceAddress];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 stringByReplacingOccurrencesOfString:@":" withString:&stru_283E79C60];
      }

      else
      {
        v10 = [v3 whbStableIdentifier];
        v9 = [v10 stringByReplacingOccurrencesOfString:@":" withString:&stru_283E79C60];
      }

      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v12 = [@"8A0A9F67-9C4E-4BA0-9ECC-" stringByAppendingFormat:@"%@", v9];
      v5 = [v11 initWithUUIDString:v12];
    }

    else
    {
      v9 = [v3 peripheralUUIDs];
      v5 = [v9 lastObject];
    }
  }

  return v5;
}

@end