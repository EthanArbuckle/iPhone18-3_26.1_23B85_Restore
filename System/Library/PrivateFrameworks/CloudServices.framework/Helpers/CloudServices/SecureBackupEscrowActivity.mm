@interface SecureBackupEscrowActivity
- (BOOL)isEqual:(id)equal;
- (SecureBackupEscrowActivity)initWithCoder:(id)coder;
- (SecureBackupEscrowActivity)initWithInitialEvent:(id)event context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecureBackupEscrowActivity

- (SecureBackupEscrowActivity)initWithInitialEvent:(id)event context:(id)context
{
  eventCopy = event;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SecureBackupEscrowActivity;
  v8 = [(SecureBackupEscrowActivity *)&v15 init];
  if (v8)
  {
    activityId = [eventCopy activityId];
    [(SecureBackupEscrowActivity *)v8 setId:activityId];

    currentBootId = [contextCopy currentBootId];
    [(SecureBackupEscrowActivity *)v8 setBootId:currentBootId];

    -[SecureBackupEscrowActivity setPid:](v8, "setPid:", [contextCopy currentPID]);
    v11 = [[SecureBackupEscrowOperation alloc] initWithEvent:eventCopy parentActivity:v8 context:contextCopy];
    v16 = v11;
    v12 = [NSArray arrayWithObjects:&v16 count:1];
    [(SecureBackupEscrowActivity *)v8 setOperations:v12];

    [(SecureBackupEscrowActivity *)v8 setAllOperationsComplete:[(SecureBackupEscrowOperation *)v11 isComplete]];
    v13 = v8;
  }

  return v8;
}

- (SecureBackupEscrowActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SecureBackupEscrowActivity;
  v5 = [(SecureBackupEscrowActivity *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    if (v6)
    {
      v7 = objc_opt_self();

      id = v5->_id;
      v5->_id = v7;

      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bootId"];
      if (v6)
      {
        v9 = objc_opt_self();

        bootId = v5->_bootId;
        v5->_bootId = v9;

        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
        v6 = v11;
        if (v11)
        {
          intValue = [(SecureBackupEscrowActivity *)v11 intValue];

          v5->_pid = intValue;
          v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allOperationsComplete"];
          v6 = v13;
          if (v13)
          {
            bOOLValue = [(SecureBackupEscrowActivity *)v13 BOOLValue];

            v5->_allOperationsComplete = bOOLValue;
            v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"someOperationsReaped"];
            v6 = v15;
            if (v15)
            {
              bOOLValue2 = [(SecureBackupEscrowActivity *)v15 BOOLValue];

              v5->_someOperationsReaped = bOOLValue2;
              v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"operations"];
              if (v6)
              {
                v17 = objc_opt_self();

                operations = v5->_operations;
                v5->_operations = v17;

                v6 = v5;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  id = self->_id;
  coderCopy = coder;
  [coderCopy encodeObject:id forKey:@"id"];
  [coderCopy encodeObject:self->_bootId forKey:@"bootId"];
  v5 = [NSNumber numberWithInt:self->_pid];
  [coderCopy encodeObject:v5 forKey:@"pid"];

  v6 = [NSNumber numberWithBool:self->_allOperationsComplete];
  [coderCopy encodeObject:v6 forKey:@"allOperationsComplete"];

  v7 = [NSNumber numberWithBool:self->_someOperationsReaped];
  [coderCopy encodeObject:v7 forKey:@"someOperationsReaped"];

  [coderCopy encodeObject:self->_operations forKey:@"operations"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SecureBackupEscrowActivity *)self id];
  v7 = [v6 copyWithZone:zone];
  [v5 setId:v7];

  bootId = [(SecureBackupEscrowActivity *)self bootId];
  v9 = [bootId copyWithZone:zone];
  [v5 setBootId:v9];

  [v5 setPid:{-[SecureBackupEscrowActivity pid](self, "pid")}];
  [v5 setAllOperationsComplete:{-[SecureBackupEscrowActivity allOperationsComplete](self, "allOperationsComplete")}];
  [v5 setSomeOperationsReaped:{-[SecureBackupEscrowActivity someOperationsReaped](self, "someOperationsReaped")}];
  operations = [(SecureBackupEscrowActivity *)self operations];
  v11 = [operations copyWithZone:zone];
  [v5 setOperations:v11];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(SecureBackupEscrowActivity *)self id];
    v7 = [v5 id];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(SecureBackupEscrowActivity *)self id];
      v10 = [v5 id];

      if (v9 != v10)
      {
        goto LABEL_12;
      }
    }

    bootId = [(SecureBackupEscrowActivity *)self bootId];
    bootId2 = [v5 bootId];
    if ([bootId isEqual:bootId2])
    {
    }

    else
    {
      bootId3 = [(SecureBackupEscrowActivity *)self bootId];
      bootId4 = [v5 bootId];

      if (bootId3 != bootId4)
      {
        goto LABEL_12;
      }
    }

    v15 = [(SecureBackupEscrowActivity *)self pid];
    if (v15 == [v5 pid])
    {
      allOperationsComplete = [(SecureBackupEscrowActivity *)self allOperationsComplete];
      if (allOperationsComplete == [v5 allOperationsComplete])
      {
        someOperationsReaped = [(SecureBackupEscrowActivity *)self someOperationsReaped];
        if (someOperationsReaped == [v5 someOperationsReaped])
        {
          operations = [(SecureBackupEscrowActivity *)self operations];
          operations2 = [v5 operations];
          if ([operations isEqual:operations2])
          {

            v8 = 1;
          }

          else
          {
            operations3 = [(SecureBackupEscrowActivity *)self operations];
            operations4 = [v5 operations];
            v8 = operations3 == operations4;
          }

          goto LABEL_13;
        }
      }
    }

LABEL_12:
    v8 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

@end