@interface DBGarageDoor
+ (id)serviceType;
+ (void)load;
- (BOOL)_shouldUpdateLastUsedForCharacteristic:(id)characteristic;
- (BOOL)current;
- (BOOL)hasError;
- (BOOL)obstructionDetected;
- (BOOL)pendingRead;
- (BOOL)pendingWrite;
- (id)description;
- (id)managedCharacteristics;
- (int64_t)_doorStateForCharacteristic:(id)characteristic;
- (int64_t)doorState;
- (int64_t)doorType;
- (int64_t)targetDoorState;
- (void)_characteristicDidUpdate:(id)update;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setTargetDoorState:(int64_t)state;
@end

@implementation DBGarageDoor

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___DBGarageDoor;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)current
{
  doorStateCharacteristic = [(DBGarageDoor *)self doorStateCharacteristic];
  if ([doorStateCharacteristic current])
  {
    targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
    if ([targetDoorStateCharacteristic current])
    {
      obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
      current = [obstructionDetectedCharacteristic current];
    }

    else
    {
      current = 0;
    }
  }

  else
  {
    current = 0;
  }

  return current;
}

- (BOOL)pendingWrite
{
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  pendingWrite = [targetDoorStateCharacteristic pendingWrite];

  return pendingWrite;
}

- (BOOL)pendingRead
{
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  if ([targetDoorStateCharacteristic pendingRead])
  {
    pendingRead = 1;
  }

  else
  {
    doorStateCharacteristic = [(DBGarageDoor *)self doorStateCharacteristic];
    if ([doorStateCharacteristic pendingRead])
    {
      pendingRead = 1;
    }

    else
    {
      obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
      pendingRead = [obstructionDetectedCharacteristic pendingRead];
    }
  }

  return pendingRead;
}

- (BOOL)hasError
{
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  if ([targetDoorStateCharacteristic hasError])
  {
    hasError = 1;
  }

  else
  {
    doorStateCharacteristic = [(DBGarageDoor *)self doorStateCharacteristic];
    if ([doorStateCharacteristic hasError])
    {
      hasError = 1;
    }

    else
    {
      obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
      hasError = [obstructionDetectedCharacteristic hasError];
    }
  }

  return hasError;
}

- (int64_t)_doorStateForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if (([characteristicCopy current] & 1) == 0 && (objc_msgSend(characteristicCopy, "pendingWrite") & 1) == 0 && !objc_msgSend(characteristicCopy, "pendingRead"))
  {
    goto LABEL_12;
  }

  if ([(DBHomeKitService *)self reachable])
  {
    value = [characteristicCopy value];
    if (value)
    {

      goto LABEL_10;
    }

    if (([characteristicCopy hasError] & 1) == 0)
    {
LABEL_10:
      value2 = [characteristicCopy value];

      if (value2)
      {
        doorStateValue = [characteristicCopy doorStateValue];
        goto LABEL_13;
      }

LABEL_12:
      doorStateValue = -1;
      goto LABEL_13;
    }

    doorStateValue = -3;
  }

  else
  {
    doorStateValue = -2;
  }

LABEL_13:

  return doorStateValue;
}

- (int64_t)doorState
{
  home = [(DBHomeKitService *)self home];
  unsupportedLegacyHomeHubVersion = [home unsupportedLegacyHomeHubVersion];

  if (unsupportedLegacyHomeHubVersion)
  {
    return -4;
  }

  doorStateCharacteristic = [(DBGarageDoor *)self doorStateCharacteristic];
  v5 = [(DBGarageDoor *)self _doorStateForCharacteristic:doorStateCharacteristic];

  if ((v5 & 0x8000000000000000) == 0)
  {
    targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
    v8 = [(DBGarageDoor *)self _doorStateForCharacteristic:targetDoorStateCharacteristic];

    obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
    LOBYTE(targetDoorStateCharacteristic) = [obstructionDetectedCharacteristic BOOLValue];

    if (targetDoorStateCharacteristic)
    {
      return 100;
    }

    else if (v5 <= 1 && v5 != v8)
    {
      if (v8 == 1)
      {
        return 3;
      }

      else if (!v8)
      {
        return 2;
      }
    }
  }

  return v5;
}

- (int64_t)targetDoorState
{
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v4 = [(DBGarageDoor *)self _doorStateForCharacteristic:targetDoorStateCharacteristic];

  return v4;
}

- (void)setTargetDoorState:(int64_t)state
{
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  doorStateValue = [targetDoorStateCharacteristic doorStateValue];

  if (doorStateValue != state)
  {
    targetDoorStateCharacteristic2 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
    [targetDoorStateCharacteristic2 setDoorStateValue:state];
  }
}

- (BOOL)obstructionDetected
{
  obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  bOOLValue = [obstructionDetectedCharacteristic BOOLValue];

  return bOOLValue;
}

- (int64_t)doorType
{
  applicationData = [(DBHomeKitService *)self applicationData];
  v3 = [applicationData objectForKey:@"HFApplicationDataServiceIconID"];

  if (v3 && [v3 length])
  {
    if ([v3 isEqualToString:@"HFCAPackageIconIdentifierGarageDoorDoubleBay"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"HFCAPackageIconIdentifierGate"])
    {
      v4 = 3;
    }

    else
    {
      v4 = [v3 isEqualToString:@"HFCAPackageIconIdentifierGarageDoor"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v26 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  name = [(DBHomeKitService *)self name];
  uniqueIdentifier = [(DBHomeKitService *)self uniqueIdentifier];
  home = [(DBHomeKitService *)self home];
  home2 = [(DBHomeKitService *)self home];
  uniqueIdentifier2 = [home2 uniqueIdentifier];
  if ([(DBHomeKitService *)self lastWritten])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v21 = v3;
  if ([(DBHomeKitService *)self reachable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v20 = v4;
  if ([(DBGarageDoor *)self current])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v19 = v5;
  if ([(DBGarageDoor *)self pendingRead])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v18 = v6;
  if ([(DBGarageDoor *)self pendingWrite])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(DBGarageDoor *)self hasError])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v17 = NSStringFromDoorState([(DBGarageDoor *)self doorState]);
  doorStateCharacteristic = [(DBGarageDoor *)self doorStateCharacteristic];
  stateDescription = [doorStateCharacteristic stateDescription];
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  stateDescription2 = [targetDoorStateCharacteristic stateDescription];
  obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  stateDescription3 = [obstructionDetectedCharacteristic stateDescription];
  v15 = [v26 stringWithFormat:@"<%@: %p name=%@ uniqueIdentifier=%@ home=(%p)%@ lastWritten=%@ reachable=%@ current=%@ pendingRead=%@ pendingWrite=%@ hasError=%@ doorState=%@ characteristics: %@ %@ %@>", v25, self, name, uniqueIdentifier, home, uniqueIdentifier2, v21, v20, v19, v18, v7, v8, v17, stateDescription, stateDescription2, stateDescription3];

  return v15;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBHomeKitService *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBHomeKitService *)self observers];
  [observers removeObserver:observerCopy];
}

+ (id)serviceType
{
  v2 = +[DBHomeKitServiceTypes serviceNameByType];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CD0E58]];

  return v3;
}

- (id)managedCharacteristics
{
  v8[3] = *MEMORY[0x277D85DE8];
  doorStateCharacteristic = [(DBGarageDoor *)self doorStateCharacteristic];
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v8[1] = targetDoorStateCharacteristic;
  obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  v8[2] = obstructionDetectedCharacteristic;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

- (void)_characteristicDidUpdate:(id)update
{
  updateCopy = update;
  uniqueIdentifier = [updateCopy uniqueIdentifier];
  doorStateCharacteristic = [(DBGarageDoor *)self doorStateCharacteristic];
  uniqueIdentifier2 = [doorStateCharacteristic uniqueIdentifier];
  v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v8)
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBGarageDoor _characteristicDidUpdate:updateCopy];
    }

    observers = [(DBHomeKitService *)self observers];
    [observers garageDoor:self didUpdateDoorState:{-[DBGarageDoor doorState](self, "doorState")}];
LABEL_13:

    goto LABEL_14;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  uniqueIdentifier4 = [targetDoorStateCharacteristic uniqueIdentifier];
  v14 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v14)
  {
    v15 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [DBGarageDoor _characteristicDidUpdate:updateCopy];
    }

    observers = [(DBHomeKitService *)self observers];
    [observers garageDoor:self didUpdateTargetDoorState:{-[DBGarageDoor targetDoorState](self, "targetDoorState")}];
    goto LABEL_13;
  }

  uniqueIdentifier5 = [updateCopy uniqueIdentifier];
  obstructionDetectedCharacteristic = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  uniqueIdentifier6 = [obstructionDetectedCharacteristic uniqueIdentifier];
  v19 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  v20 = DBLogForCategory(9uLL);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      [DBGarageDoor _characteristicDidUpdate:updateCopy];
    }

    observers = [(DBHomeKitService *)self observers];
    [observers garageDoor:self didUpdateObstructionDetected:{-[DBGarageDoor obstructionDetected](self, "obstructionDetected")}];
    goto LABEL_13;
  }

  if (v21)
  {
    [DBGarageDoor _characteristicDidUpdate:updateCopy];
  }

  v22.receiver = self;
  v22.super_class = DBGarageDoor;
  [(DBHomeKitService *)&v22 _characteristicDidUpdate:updateCopy];
LABEL_14:
}

- (BOOL)_shouldUpdateLastUsedForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBGarageDoor *)characteristicCopy _shouldUpdateLastUsedForCharacteristic:v5];
  }

  uniqueIdentifier = [characteristicCopy uniqueIdentifier];
  targetDoorStateCharacteristic = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  uniqueIdentifier2 = [targetDoorStateCharacteristic uniqueIdentifier];
  v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v9)
  {
    _tracksLastUsed = [(DBGarageDoor *)self _tracksLastUsed];
  }

  else
  {
    _tracksLastUsed = 0;
  }

  return _tracksLastUsed;
}

- (void)_characteristicDidUpdate:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 name];
  v8 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_characteristicDidUpdate:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_characteristicDidUpdate:(void *)a1 .cold.3(void *a1)
{
  v6 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_characteristicDidUpdate:(void *)a1 .cold.4(void *a1)
{
  v6 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_shouldUpdateLastUsedForCharacteristic:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a1 uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [a2 targetDoorStateCharacteristic];
  v8 = [v7 uniqueIdentifier];
  v9 = [v8 UUIDString];
  v10 = 138543618;
  v11 = v6;
  v12 = 2114;
  v13 = v9;
  _os_log_debug_impl(&dword_248146000, a3, OS_LOG_TYPE_DEBUG, "characteristic.uniqueIdentifier=%{public}@ targetDoorStateCharacteristic.uniqueIdentifier=%{public}@", &v10, 0x16u);
}

@end