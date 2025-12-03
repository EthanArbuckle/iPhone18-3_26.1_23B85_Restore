@interface HAPBLEPeripheral
+ (id)uuidForBTLEPeripheral:(id)peripheral;
- (BOOL)isBroadcasting;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReachable;
- (BOOL)updateWithPeripheral:(id)peripheral;
- (HAPBLEPeripheral)initWithName:(id)name peripheralUUID:(id)d identifier:(id)identifier hapVersion:(id)version hkType:(id)type advInterval:(id)interval statusFlags:(id)flags category:(id)self0 stateNumber:(id)self1 configNumber:(id)self2 setupHash:(id)self3 encryptedPayload:(id)self4 whbStableIdentifier:(id)self5 advDeviceAddress:(id)self6;
- (NSArray)peripheralUUIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortDescription;
- (int64_t)compareConfigNumber:(id)number;
- (int64_t)compareStateNumber:(id)number;
- (unint64_t)hash;
- (void)_updateAverageRSSIWithRSSI:(id)i;
- (void)connectedToCBPeripheral:(id)peripheral error:(id)error;
- (void)disconnectedFromCBPeripheral:(id)peripheral shouldRemove:(BOOL)remove;
- (void)mergeWithPeripheral:(id)peripheral;
- (void)reset;
- (void)updateStateNumber:(id)number;
@end

@implementation HAPBLEPeripheral

- (void)disconnectedFromCBPeripheral:(id)peripheral shouldRemove:(BOOL)remove
{
  removeCopy = remove;
  peripheralCopy = peripheral;
  [(HAPBLEPeripheral *)self setCbPeripheral:0];
  if (peripheralCopy && removeCopy)
  {
    os_unfair_lock_lock_with_options();
    cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
    identifier = [peripheralCopy identifier];
    [(NSMutableArray *)cbPeripheralUUIDs removeObject:identifier];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)connectedToCBPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v7 = peripheralCopy;
  if (errorCopy)
  {
    os_unfair_lock_lock_with_options();
    cbPeripheral = [(HAPBLEPeripheral *)self cbPeripheral];

    if (cbPeripheral)
    {
      cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
      cbPeripheral2 = [(HAPBLEPeripheral *)self cbPeripheral];
      identifier = [cbPeripheral2 identifier];
      [(NSMutableArray *)cbPeripheralUUIDs removeObject:identifier];
    }

    if (peripheralCopy)
    {
      v12 = self->_cbPeripheralUUIDs;
      identifier2 = [peripheralCopy identifier];
      [(NSMutableArray *)v12 removeObject:identifier2];
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  [(HAPBLEPeripheral *)self setCbPeripheral:v7];
}

- (void)mergeWithPeripheral:(id)peripheral
{
  v107 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  if (self == peripheralCopy)
  {
    goto LABEL_101;
  }

  identifier = [(HAPBLEPeripheral *)self identifier];
  identifier2 = [(HAPBLEPeripheral *)peripheralCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (!v7)
  {
    goto LABEL_101;
  }

  [(HAPBLEPeripheral *)peripheralCopy lastSeen];
  v9 = v8;
  [(HAPBLEPeripheral *)self lastSeen];
  v11 = v10;
  if (v9 > v10)
  {
    [(HAPBLEPeripheral *)peripheralCopy lastSeen];
    [(HAPBLEPeripheral *)self setLastSeen:?];
    encryptedPayload = [(HAPBLEPeripheral *)peripheralCopy encryptedPayload];
    [(HAPBLEPeripheral *)self setEncryptedPayload:encryptedPayload];

    [(HAPBLEPeripheral *)self setIsCached:[(HAPBLEPeripheral *)peripheralCopy isCached]];
    averageRSSI = [(HAPBLEPeripheral *)peripheralCopy averageRSSI];

    if (averageRSSI)
    {
      averageRSSI2 = [(HAPBLEPeripheral *)peripheralCopy averageRSSI];
      [(HAPBLEPeripheral *)self _updateAverageRSSIWithRSSI:averageRSSI2];
    }

    cbPeripheral = [(HAPBLEPeripheral *)peripheralCopy cbPeripheral];
    if (cbPeripheral)
    {
      v16 = cbPeripheral;
      cbPeripheral2 = [(HAPBLEPeripheral *)self cbPeripheral];

      if (!cbPeripheral2)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          shortDescription = [(HAPBLEPeripheral *)selfCopy shortDescription];
          cbPeripheral3 = [(HAPBLEPeripheral *)peripheralCopy cbPeripheral];
          *buf = 138543874;
          v102 = v21;
          v103 = 2112;
          v104 = shortDescription;
          v105 = 2112;
          v106 = cbPeripheral3;
          _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating the BLE peripheral: %@ with CBPeripheral: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        cbPeripheral4 = [(HAPBLEPeripheral *)peripheralCopy cbPeripheral];
        [(HAPBLEPeripheral *)selfCopy setCbPeripheral:cbPeripheral4];
      }
    }
  }

  identifier3 = [(HAPBLEPeripheral *)peripheralCopy identifier];
  v26 = identifier3;
  if (v9 <= v11 && identifier3)
  {
    identifier4 = [(HAPBLEPeripheral *)self identifier];

    if (!identifier4)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v26)
    {
LABEL_16:
      identifier5 = [(HAPBLEPeripheral *)peripheralCopy identifier];
      [(HAPBLEPeripheral *)self setIdentifier:identifier5];
    }
  }

  whbStableIdentifier = [(HAPBLEPeripheral *)peripheralCopy whbStableIdentifier];
  v30 = whbStableIdentifier;
  if (v9 <= v11 && whbStableIdentifier)
  {
    whbStableIdentifier2 = [(HAPBLEPeripheral *)self whbStableIdentifier];

    if (!whbStableIdentifier2)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v30)
    {
LABEL_22:
      whbStableIdentifier3 = [(HAPBLEPeripheral *)peripheralCopy whbStableIdentifier];
      [(HAPBLEPeripheral *)self setWhbStableIdentifier:whbStableIdentifier3];
    }
  }

  hkType = [(HAPBLEPeripheral *)peripheralCopy hkType];
  v34 = hkType;
  if (v9 <= v11 && hkType)
  {
    hkType2 = [(HAPBLEPeripheral *)self hkType];

    if (!hkType2)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v34)
    {
LABEL_28:
      hkType3 = [(HAPBLEPeripheral *)peripheralCopy hkType];
      [(HAPBLEPeripheral *)self setHkType:hkType3];
    }
  }

  advInterval = [(HAPBLEPeripheral *)peripheralCopy advInterval];
  v38 = advInterval;
  if (v9 <= v11 && advInterval)
  {
    advInterval2 = [(HAPBLEPeripheral *)self advInterval];

    if (!advInterval2)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v38)
    {
LABEL_34:
      advInterval3 = [(HAPBLEPeripheral *)peripheralCopy advInterval];
      [(HAPBLEPeripheral *)self setAdvInterval:advInterval3];
    }
  }

  if ([(HAPBLEPeripheral *)peripheralCopy advertisementFormat]&& (v9 > v11 || ![(HAPBLEPeripheral *)self advertisementFormat]))
  {
    [(HAPBLEPeripheral *)self setAdvertisementFormat:[(HAPBLEPeripheral *)peripheralCopy advertisementFormat]];
  }

  statusFlags = [(HAPBLEPeripheral *)peripheralCopy statusFlags];
  v42 = statusFlags;
  if (v9 <= v11 && statusFlags)
  {
    statusFlags2 = [(HAPBLEPeripheral *)self statusFlags];

    if (!statusFlags2)
    {
      goto LABEL_44;
    }
  }

  else
  {

    if (v42)
    {
LABEL_44:
      statusFlags3 = [(HAPBLEPeripheral *)peripheralCopy statusFlags];
      [(HAPBLEPeripheral *)self setStatusFlags:statusFlags3];
    }
  }

  category = [(HAPBLEPeripheral *)peripheralCopy category];
  v46 = category;
  if (v9 <= v11 && category)
  {
    category2 = [(HAPBLEPeripheral *)self category];

    if (!category2)
    {
      goto LABEL_50;
    }
  }

  else
  {

    if (v46)
    {
LABEL_50:
      category3 = [(HAPBLEPeripheral *)peripheralCopy category];
      [(HAPBLEPeripheral *)self setCategory:category3];
    }
  }

  stateNumber = [(HAPBLEPeripheral *)peripheralCopy stateNumber];
  v50 = stateNumber;
  if (v9 <= v11 && stateNumber)
  {
    stateNumber2 = [(HAPBLEPeripheral *)self stateNumber];

    if (stateNumber2)
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

  if (![(HAPBLEPeripheral *)peripheralCopy isCached]|| ([(HAPBLEPeripheral *)peripheralCopy stateNumber], v52 = objc_claimAutoreleasedReturnValue(), v53 = [(HAPBLEPeripheral *)self compareStateNumber:v52], v52, v53 == -1))
  {
    stateNumber3 = [(HAPBLEPeripheral *)peripheralCopy stateNumber];
    [(HAPBLEPeripheral *)self setStateNumber:stateNumber3];
  }

LABEL_59:
  configNumber = [(HAPBLEPeripheral *)peripheralCopy configNumber];
  v56 = configNumber;
  if (v9 <= v11 && configNumber)
  {
    configNumber2 = [(HAPBLEPeripheral *)self configNumber];

    if (configNumber2)
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

  if (![(HAPBLEPeripheral *)peripheralCopy isCached]|| ([(HAPBLEPeripheral *)peripheralCopy configNumber], v58 = objc_claimAutoreleasedReturnValue(), v59 = [(HAPBLEPeripheral *)self compareConfigNumber:v58], v58, v59 == -1))
  {
    configNumber3 = [(HAPBLEPeripheral *)peripheralCopy configNumber];
    [(HAPBLEPeripheral *)self setConfigNumber:configNumber3];
  }

LABEL_67:
  setupHash = [(HAPBLEPeripheral *)peripheralCopy setupHash];
  v62 = setupHash;
  if (v9 <= v11 && setupHash)
  {
    setupHash2 = [(HAPBLEPeripheral *)self setupHash];

    if (!setupHash2)
    {
      goto LABEL_72;
    }
  }

  else
  {

    if (v62)
    {
LABEL_72:
      setupHash3 = [(HAPBLEPeripheral *)peripheralCopy setupHash];
      [(HAPBLEPeripheral *)self setSetupHash:setupHash3];
    }
  }

  averageRSSI3 = [(HAPBLEPeripheral *)peripheralCopy averageRSSI];
  v66 = averageRSSI3;
  if (v9 <= v11 && averageRSSI3)
  {
    averageRSSI4 = [(HAPBLEPeripheral *)self averageRSSI];

    if (!averageRSSI4)
    {
      goto LABEL_78;
    }
  }

  else
  {

    if (v66)
    {
LABEL_78:
      averageRSSI5 = [(HAPBLEPeripheral *)peripheralCopy averageRSSI];
      [(HAPBLEPeripheral *)self setAverageRSSI:averageRSSI5];
    }
  }

  name = [(HAPBLEPeripheral *)self name];
  v70 = [name length];
  name2 = [(HAPBLEPeripheral *)peripheralCopy name];
  v72 = [name2 length];

  if (v70 < v72)
  {
    name3 = [(HAPBLEPeripheral *)peripheralCopy name];
    [(HAPBLEPeripheral *)self setName:name3];
  }

  peripheralUUIDs = [(HAPBLEPeripheral *)peripheralCopy peripheralUUIDs];
  if (peripheralUUIDs)
  {
    v75 = peripheralUUIDs;
    peripheralUUIDs2 = [(HAPBLEPeripheral *)self peripheralUUIDs];
    peripheralUUIDs3 = [(HAPBLEPeripheral *)peripheralCopy peripheralUUIDs];
    v78 = [peripheralUUIDs2 isEqual:peripheralUUIDs3];

    if ((v78 & 1) == 0)
    {
      if (v9 <= v11)
      {
        selfCopy2 = peripheralCopy;
      }

      else
      {
        selfCopy2 = self;
      }

      if (v9 <= v11)
      {
        selfCopy3 = self;
      }

      else
      {
        selfCopy3 = peripheralCopy;
      }

      peripheralUUIDs4 = [(HAPBLEPeripheral *)selfCopy2 peripheralUUIDs];
      v82 = [peripheralUUIDs4 mutableCopy];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      peripheralUUIDs5 = [(HAPBLEPeripheral *)selfCopy3 peripheralUUIDs];
      v84 = [peripheralUUIDs5 countByEnumeratingWithState:&v96 objects:v100 count:16];
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
              objc_enumerationMutation(peripheralUUIDs5);
            }

            v88 = *(*(&v96 + 1) + 8 * i);
            [v82 removeObject:v88];
            [v82 addObject:v88];
          }

          v85 = [peripheralUUIDs5 countByEnumeratingWithState:&v96 objects:v100 count:16];
        }

        while (v85);
      }

      cbPeripheral5 = [(HAPBLEPeripheral *)self cbPeripheral];
      state = [cbPeripheral5 state];

      if (state)
      {
        cbPeripheral6 = [(HAPBLEPeripheral *)self cbPeripheral];
        identifier6 = [cbPeripheral6 identifier];
        [v82 removeObject:identifier6];

        cbPeripheral7 = [(HAPBLEPeripheral *)self cbPeripheral];
        identifier7 = [cbPeripheral7 identifier];
        [v82 addObject:identifier7];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HAPBLEPeripheral);
  identifier = [(HAPBLEPeripheral *)self identifier];
  identifier = v4->_identifier;
  v4->_identifier = identifier;

  uniqueBTIdentifier = [(HAPBLEPeripheral *)self uniqueBTIdentifier];
  uniqueBTIdentifier = v4->_uniqueBTIdentifier;
  v4->_uniqueBTIdentifier = uniqueBTIdentifier;

  advDeviceAddress = [(HAPBLEPeripheral *)self advDeviceAddress];
  advDeviceAddress = v4->_advDeviceAddress;
  v4->_advDeviceAddress = advDeviceAddress;

  peripheralUUIDs = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v12 = [peripheralUUIDs mutableCopy];
  cbPeripheralUUIDs = v4->_cbPeripheralUUIDs;
  v4->_cbPeripheralUUIDs = v12;

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if ((HAPIsHH2Enabled_hh2Enabled & 1) == 0)
  {
    cbPeripheral = [(HAPBLEPeripheral *)self cbPeripheral];
    cbPeripheral = v4->_cbPeripheral;
    v4->_cbPeripheral = cbPeripheral;
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
  encryptedPayload = [(HAPBLEPeripheral *)self encryptedPayload];
  v3 = encryptedPayload != 0;

  return v3;
}

- (void)_updateAverageRSSIWithRSSI:(id)i
{
  iCopy = i;
  if (iCopy)
  {
    v9 = iCopy;
    averageRSSI = [(HAPBLEPeripheral *)self averageRSSI];
    if (averageRSSI)
    {
      v6 = MEMORY[0x277CCABB0];
      averageRSSI2 = [(HAPBLEPeripheral *)self averageRSSI];
      v8 = [v6 numberWithInteger:{(objc_msgSend(v9, "integerValue") + objc_msgSend(averageRSSI2, "integerValue")) / 2}];
      [(HAPBLEPeripheral *)self setAverageRSSI:v8];
    }

    else
    {
      [(HAPBLEPeripheral *)self setAverageRSSI:v9];
    }

    iCopy = v9;
  }
}

- (BOOL)updateWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  name = [peripheralCopy name];
  v6 = [name length];
  name2 = [(HAPBLEPeripheral *)self name];
  v8 = [name2 length];

  if (v6 > v8)
  {
    name3 = [peripheralCopy name];
    [(HAPBLEPeripheral *)self setName:name3];
  }

  encryptedPayload = [peripheralCopy encryptedPayload];

  if (encryptedPayload)
  {
    encryptedPayload2 = [(HAPBLEPeripheral *)self encryptedPayload];
    encryptedPayload3 = [peripheralCopy encryptedPayload];
    v13 = [encryptedPayload2 isEqualToData:encryptedPayload3];

    v14 = v13 ^ 1;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    configNumber = [(HAPBLEPeripheral *)self configNumber];
    configNumber2 = [peripheralCopy configNumber];
    if ([configNumber isEqual:configNumber2])
    {
      stateNumber = [(HAPBLEPeripheral *)self stateNumber];
      stateNumber2 = [peripheralCopy stateNumber];
      if ([stateNumber isEqual:stateNumber2])
      {
        peripheralUUIDs = [(HAPBLEPeripheral *)self peripheralUUIDs];
        peripheralUUIDs2 = [peripheralCopy peripheralUUIDs];
        lastObject = [peripheralUUIDs2 lastObject];
        if ([peripheralUUIDs containsObject:lastObject])
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

  [(HAPBLEPeripheral *)self mergeWithPeripheral:peripheralCopy];

  return v14;
}

- (void)updateStateNumber:(id)number
{
  v20 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if ([(HAPBLEPeripheral *)self compareStateNumber:numberCopy]== -1)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      identifier = [(HAPBLEPeripheral *)selfCopy identifier];
      stateNumber = [(HAPBLEPeripheral *)selfCopy stateNumber];
      v12 = 138544130;
      v13 = v8;
      v14 = 2112;
      v15 = identifier;
      v16 = 2114;
      v17 = stateNumber;
      v18 = 2114;
      v19 = numberCopy;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating state number for tracked peripheral of %@ to sync-up current/new: %{public}@/%{public}@", &v12, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    [(HAPBLEPeripheral *)selfCopy setStateNumber:numberCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)compareConfigNumber:(id)number
{
  numberCopy = number;
  configNumber = [(HAPBLEPeripheral *)self configNumber];
  v6 = HAPCompareStateNumberWithRollover(configNumber, numberCopy, 0xFFuLL);

  return v6;
}

- (int64_t)compareStateNumber:(id)number
{
  numberCopy = number;
  stateNumber = [(HAPBLEPeripheral *)self stateNumber];
  v6 = HAPCompareStateNumberWithRollover(stateNumber, numberCopy, 0xFFuLL);

  return v6;
}

- (id)description
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = MEMORY[0x277CCACA8];
  v27 = HAPIsInternalBuild();
  if (v27)
  {
    name = [(HAPBLEPeripheral *)self name];
  }

  else
  {
    name = @"<private>";
  }

  identifier = [(HAPBLEPeripheral *)self identifier];
  advDeviceAddress = [(HAPBLEPeripheral *)self advDeviceAddress];
  statusFlags = [(HAPBLEPeripheral *)self statusFlags];
  unsignedIntValue = [statusFlags unsignedIntValue];
  category = [(HAPBLEPeripheral *)self category];
  stateNumber = [(HAPBLEPeripheral *)self stateNumber];
  configNumber = [(HAPBLEPeripheral *)self configNumber];
  advertisementFormat = [(HAPBLEPeripheral *)self advertisementFormat];
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
  peripheralUUIDs = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v16 = [v7 numberWithUnsignedInteger:{objc_msgSend(peripheralUUIDs, "count")}];
  cbPeripheral = [(HAPBLEPeripheral *)self cbPeripheral];
  identifier2 = [cbPeripheral identifier];
  cbPeripheral2 = [(HAPBLEPeripheral *)self cbPeripheral];
  v11 = MEMORY[0x277CCABB0];
  cbPeripheral3 = [(HAPBLEPeripheral *)self cbPeripheral];
  v13 = [v11 numberWithInteger:{objc_msgSend(cbPeripheral3, "state")}];
  v23 = [v22 stringWithFormat:@"%@ (%@/%@/%p), sf: 0x%0x, c: %@, s#: %@, c#: %@, v: %tu, cached: %@, seen: '%@', periph[%@]: %@ (%p: %@)", name, identifier, advDeviceAddress, self, unsignedIntValue, category, stateNumber, configNumber, advertisementFormat, v20, v6, v16, identifier2, cbPeripheral2, v13];

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
    name = [(HAPBLEPeripheral *)self name];
  }

  else
  {
    name = @"<private>";
  }

  identifier = [(HAPBLEPeripheral *)self identifier];
  stateNumber = [(HAPBLEPeripheral *)self stateNumber];
  [(HAPBLEPeripheral *)self isCached];
  v4 = HMFBooleanToString();
  v5 = MEMORY[0x277CCABB0];
  peripheralUUIDs = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v6 = [v5 numberWithUnsignedInteger:{objc_msgSend(peripheralUUIDs, "count")}];
  cbPeripheral = [(HAPBLEPeripheral *)self cbPeripheral];
  identifier2 = [cbPeripheral identifier];
  cbPeripheral2 = [(HAPBLEPeripheral *)self cbPeripheral];
  v10 = MEMORY[0x277CCABB0];
  cbPeripheral3 = [(HAPBLEPeripheral *)self cbPeripheral];
  v12 = [v10 numberWithInteger:{objc_msgSend(cbPeripheral3, "state")}];
  v17 = [v16 stringWithFormat:@"%@/%@ (%@, %@, %p) periph[%@] -> %@ (%p: %@)", name, identifier, stateNumber, v4, self, v6, identifier2, cbPeripheral2, v12];

  if (v19)
  {
  }

  return v17;
}

- (unint64_t)hash
{
  identifier = [(HAPBLEPeripheral *)self identifier];
  v4 = [identifier hash];
  whbStableIdentifier = [(HAPBLEPeripheral *)self whbStableIdentifier];
  v6 = [whbStableIdentifier hash] ^ v4;
  advDeviceAddress = [(HAPBLEPeripheral *)self advDeviceAddress];
  v8 = [advDeviceAddress hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(HAPBLEPeripheral *)self identifier], v7 = objc_claimAutoreleasedReturnValue(), [(HAPBLEPeripheral *)v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      uniqueBTIdentifier = [(HAPBLEPeripheral *)self uniqueBTIdentifier];
      uniqueBTIdentifier2 = [(HAPBLEPeripheral *)v6 uniqueBTIdentifier];
      v12 = HMFEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HAPBLEPeripheral)initWithName:(id)name peripheralUUID:(id)d identifier:(id)identifier hapVersion:(id)version hkType:(id)type advInterval:(id)interval statusFlags:(id)flags category:(id)self0 stateNumber:(id)self1 configNumber:(id)self2 setupHash:(id)self3 encryptedPayload:(id)self4 whbStableIdentifier:(id)self5 advDeviceAddress:(id)self6
{
  v50[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  versionCopy = version;
  typeCopy = type;
  intervalCopy = interval;
  intervalCopy2 = interval;
  flagsCopy = flags;
  categoryCopy = category;
  numberCopy = number;
  configNumberCopy = configNumber;
  hashCopy = hash;
  payloadCopy = payload;
  stableIdentifierCopy = stableIdentifier;
  v24 = versionCopy;
  addressCopy = address;
  v49.receiver = self;
  v49.super_class = HAPBLEPeripheral;
  v26 = [(HAPBLEPeripheral *)&v49 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_name, name);
    objc_storeStrong(&v27->_hkType, type);
    objc_storeStrong(&v27->_advInterval, intervalCopy);
    v27->_advertisementFormat = [v24 unsignedIntegerValue];
    objc_storeStrong(&v27->_statusFlags, flags);
    objc_storeStrong(&v27->_identifier, identifierCopy);
    objc_storeStrong(&v27->_category, category);
    objc_storeStrong(&v27->_stateNumber, number);
    objc_storeStrong(&v27->_configNumber, configNumber);
    objc_storeStrong(&v27->_setupHash, hash);
    objc_storeStrong(&v27->_encryptedPayload, payload);
    v27->_lastSeen = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v27->_whbStableIdentifier, stableIdentifier);
    objc_storeStrong(&v27->_advDeviceAddress, address);
    v50[0] = dCopy;
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

+ (id)uuidForBTLEPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  uniqueBTIdentifier = [peripheralCopy uniqueBTIdentifier];

  if (uniqueBTIdentifier)
  {
    uniqueBTIdentifier2 = [peripheralCopy uniqueBTIdentifier];
  }

  else
  {
    if (HAPIsHH2Enabled_onceToken != -1)
    {
      dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
    }

    if (HAPIsHH2Enabled_hh2Enabled == 1 && ([peripheralCopy whbStableIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      advDeviceAddress = [peripheralCopy advDeviceAddress];
      v8 = advDeviceAddress;
      if (advDeviceAddress)
      {
        peripheralUUIDs = [advDeviceAddress stringByReplacingOccurrencesOfString:@":" withString:&stru_283E79C60];
      }

      else
      {
        whbStableIdentifier = [peripheralCopy whbStableIdentifier];
        peripheralUUIDs = [whbStableIdentifier stringByReplacingOccurrencesOfString:@":" withString:&stru_283E79C60];
      }

      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v12 = [@"8A0A9F67-9C4E-4BA0-9ECC-" stringByAppendingFormat:@"%@", peripheralUUIDs];
      uniqueBTIdentifier2 = [v11 initWithUUIDString:v12];
    }

    else
    {
      peripheralUUIDs = [peripheralCopy peripheralUUIDs];
      uniqueBTIdentifier2 = [peripheralUUIDs lastObject];
    }
  }

  return uniqueBTIdentifier2;
}

@end