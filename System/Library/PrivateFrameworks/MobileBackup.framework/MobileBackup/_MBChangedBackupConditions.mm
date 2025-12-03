@interface _MBChangedBackupConditions
- (id)_dictionaryRepresentation;
- (id)description;
@end

@implementation _MBChangedBackupConditions

- (id)_dictionaryRepresentation
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:7];
  initial = [(_MBChangedBackupConditions *)self initial];
  [v3 setObject:initial forKeyedSubscript:@"initial"];

  locked = [(_MBChangedBackupConditions *)self locked];
  [v3 setObject:locked forKeyedSubscript:@"locked"];

  onWiFi = [(_MBChangedBackupConditions *)self onWiFi];
  [v3 setObject:onWiFi forKeyedSubscript:@"onWiFi"];

  onPower = [(_MBChangedBackupConditions *)self onPower];
  [v3 setObject:onPower forKeyedSubscript:@"onPower"];

  backupOnCellularEnabled = [(_MBChangedBackupConditions *)self backupOnCellularEnabled];
  [v3 setObject:backupOnCellularEnabled forKeyedSubscript:@"backupOnCellularEnabled"];

  onCellular = [(_MBChangedBackupConditions *)self onCellular];
  [v3 setObject:onCellular forKeyedSubscript:@"onCellular"];

  onExpensiveCellular = [(_MBChangedBackupConditions *)self onExpensiveCellular];
  [v3 setObject:onExpensiveCellular forKeyedSubscript:@"onExpensiveCellular"];

  autoBackupOnCellularAllowed = [(_MBChangedBackupConditions *)self autoBackupOnCellularAllowed];
  [v3 setObject:autoBackupOnCellularAllowed forKeyedSubscript:@"autoBackupOnCellularAllowed"];

  return v3;
}

- (id)description
{
  _dictionaryRepresentation = [(_MBChangedBackupConditions *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation description];

  return v3;
}

@end