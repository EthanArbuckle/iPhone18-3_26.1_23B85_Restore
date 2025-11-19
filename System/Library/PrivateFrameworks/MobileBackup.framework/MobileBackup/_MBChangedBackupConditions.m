@interface _MBChangedBackupConditions
- (id)_dictionaryRepresentation;
- (id)description;
@end

@implementation _MBChangedBackupConditions

- (id)_dictionaryRepresentation
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:7];
  v4 = [(_MBChangedBackupConditions *)self initial];
  [v3 setObject:v4 forKeyedSubscript:@"initial"];

  v5 = [(_MBChangedBackupConditions *)self locked];
  [v3 setObject:v5 forKeyedSubscript:@"locked"];

  v6 = [(_MBChangedBackupConditions *)self onWiFi];
  [v3 setObject:v6 forKeyedSubscript:@"onWiFi"];

  v7 = [(_MBChangedBackupConditions *)self onPower];
  [v3 setObject:v7 forKeyedSubscript:@"onPower"];

  v8 = [(_MBChangedBackupConditions *)self backupOnCellularEnabled];
  [v3 setObject:v8 forKeyedSubscript:@"backupOnCellularEnabled"];

  v9 = [(_MBChangedBackupConditions *)self onCellular];
  [v3 setObject:v9 forKeyedSubscript:@"onCellular"];

  v10 = [(_MBChangedBackupConditions *)self onExpensiveCellular];
  [v3 setObject:v10 forKeyedSubscript:@"onExpensiveCellular"];

  v11 = [(_MBChangedBackupConditions *)self autoBackupOnCellularAllowed];
  [v3 setObject:v11 forKeyedSubscript:@"autoBackupOnCellularAllowed"];

  return v3;
}

- (id)description
{
  v2 = [(_MBChangedBackupConditions *)self _dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

@end