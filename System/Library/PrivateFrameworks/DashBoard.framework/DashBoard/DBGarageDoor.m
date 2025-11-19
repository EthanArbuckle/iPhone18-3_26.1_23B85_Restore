@interface DBGarageDoor
+ (id)serviceType;
+ (void)load;
- (BOOL)_shouldUpdateLastUsedForCharacteristic:(id)a3;
- (BOOL)current;
- (BOOL)hasError;
- (BOOL)obstructionDetected;
- (BOOL)pendingRead;
- (BOOL)pendingWrite;
- (id)description;
- (id)managedCharacteristics;
- (int64_t)_doorStateForCharacteristic:(id)a3;
- (int64_t)doorState;
- (int64_t)doorType;
- (int64_t)targetDoorState;
- (void)_characteristicDidUpdate:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setTargetDoorState:(int64_t)a3;
@end

@implementation DBGarageDoor

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___DBGarageDoor;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)current
{
  v3 = [(DBGarageDoor *)self doorStateCharacteristic];
  if ([v3 current])
  {
    v4 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
    if ([v4 current])
    {
      v5 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
      v6 = [v5 current];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)pendingWrite
{
  v2 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v3 = [v2 pendingWrite];

  return v3;
}

- (BOOL)pendingRead
{
  v3 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  if ([v3 pendingRead])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DBGarageDoor *)self doorStateCharacteristic];
    if ([v5 pendingRead])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
      v4 = [v6 pendingRead];
    }
  }

  return v4;
}

- (BOOL)hasError
{
  v3 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  if ([v3 hasError])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DBGarageDoor *)self doorStateCharacteristic];
    if ([v5 hasError])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
      v4 = [v6 hasError];
    }
  }

  return v4;
}

- (int64_t)_doorStateForCharacteristic:(id)a3
{
  v4 = a3;
  if (([v4 current] & 1) == 0 && (objc_msgSend(v4, "pendingWrite") & 1) == 0 && !objc_msgSend(v4, "pendingRead"))
  {
    goto LABEL_12;
  }

  if ([(DBHomeKitService *)self reachable])
  {
    v5 = [v4 value];
    if (v5)
    {

      goto LABEL_10;
    }

    if (([v4 hasError] & 1) == 0)
    {
LABEL_10:
      v7 = [v4 value];

      if (v7)
      {
        v6 = [v4 doorStateValue];
        goto LABEL_13;
      }

LABEL_12:
      v6 = -1;
      goto LABEL_13;
    }

    v6 = -3;
  }

  else
  {
    v6 = -2;
  }

LABEL_13:

  return v6;
}

- (int64_t)doorState
{
  v3 = [(DBHomeKitService *)self home];
  v4 = [v3 unsupportedLegacyHomeHubVersion];

  if (v4)
  {
    return -4;
  }

  v6 = [(DBGarageDoor *)self doorStateCharacteristic];
  v5 = [(DBGarageDoor *)self _doorStateForCharacteristic:v6];

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
    v8 = [(DBGarageDoor *)self _doorStateForCharacteristic:v7];

    v9 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
    LOBYTE(v7) = [v9 BOOLValue];

    if (v7)
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
  v3 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v4 = [(DBGarageDoor *)self _doorStateForCharacteristic:v3];

  return v4;
}

- (void)setTargetDoorState:(int64_t)a3
{
  v5 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v6 = [v5 doorStateValue];

  if (v6 != a3)
  {
    v7 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
    [v7 setDoorStateValue:a3];
  }
}

- (BOOL)obstructionDetected
{
  v2 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)doorType
{
  v2 = [(DBHomeKitService *)self applicationData];
  v3 = [v2 objectForKey:@"HFApplicationDataServiceIconID"];

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
  v24 = [(DBHomeKitService *)self name];
  v23 = [(DBHomeKitService *)self uniqueIdentifier];
  v22 = [(DBHomeKitService *)self home];
  v27 = [(DBHomeKitService *)self home];
  v28 = [v27 uniqueIdentifier];
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
  v9 = [(DBGarageDoor *)self doorStateCharacteristic];
  v10 = [v9 stateDescription];
  v11 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v12 = [v11 stateDescription];
  v13 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  v14 = [v13 stateDescription];
  v15 = [v26 stringWithFormat:@"<%@: %p name=%@ uniqueIdentifier=%@ home=(%p)%@ lastWritten=%@ reachable=%@ current=%@ pendingRead=%@ pendingWrite=%@ hasError=%@ doorState=%@ characteristics: %@ %@ %@>", v25, self, v24, v23, v22, v28, v21, v20, v19, v18, v7, v8, v17, v10, v12, v14];

  return v15;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeKitService *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeKitService *)self observers];
  [v5 removeObserver:v4];
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
  v3 = [(DBGarageDoor *)self doorStateCharacteristic];
  v4 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v8[1] = v4;
  v5 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  v8[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

- (void)_characteristicDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  v6 = [(DBGarageDoor *)self doorStateCharacteristic];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBGarageDoor _characteristicDidUpdate:v4];
    }

    v10 = [(DBHomeKitService *)self observers];
    [v10 garageDoor:self didUpdateDoorState:{-[DBGarageDoor doorState](self, "doorState")}];
LABEL_13:

    goto LABEL_14;
  }

  v11 = [v4 uniqueIdentifier];
  v12 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v13 = [v12 uniqueIdentifier];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    v15 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [DBGarageDoor _characteristicDidUpdate:v4];
    }

    v10 = [(DBHomeKitService *)self observers];
    [v10 garageDoor:self didUpdateTargetDoorState:{-[DBGarageDoor targetDoorState](self, "targetDoorState")}];
    goto LABEL_13;
  }

  v16 = [v4 uniqueIdentifier];
  v17 = [(DBGarageDoor *)self obstructionDetectedCharacteristic];
  v18 = [v17 uniqueIdentifier];
  v19 = [v16 isEqual:v18];

  v20 = DBLogForCategory(9uLL);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      [DBGarageDoor _characteristicDidUpdate:v4];
    }

    v10 = [(DBHomeKitService *)self observers];
    [v10 garageDoor:self didUpdateObstructionDetected:{-[DBGarageDoor obstructionDetected](self, "obstructionDetected")}];
    goto LABEL_13;
  }

  if (v21)
  {
    [DBGarageDoor _characteristicDidUpdate:v4];
  }

  v22.receiver = self;
  v22.super_class = DBGarageDoor;
  [(DBHomeKitService *)&v22 _characteristicDidUpdate:v4];
LABEL_14:
}

- (BOOL)_shouldUpdateLastUsedForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBGarageDoor *)v4 _shouldUpdateLastUsedForCharacteristic:v5];
  }

  v6 = [v4 uniqueIdentifier];
  v7 = [(DBGarageDoor *)self targetDoorStateCharacteristic];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [(DBGarageDoor *)self _tracksLastUsed];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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