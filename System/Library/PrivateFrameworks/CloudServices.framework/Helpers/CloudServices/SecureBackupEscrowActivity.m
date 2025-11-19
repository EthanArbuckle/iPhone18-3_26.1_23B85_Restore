@interface SecureBackupEscrowActivity
- (BOOL)isEqual:(id)a3;
- (SecureBackupEscrowActivity)initWithCoder:(id)a3;
- (SecureBackupEscrowActivity)initWithInitialEvent:(id)a3 context:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SecureBackupEscrowActivity

- (SecureBackupEscrowActivity)initWithInitialEvent:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SecureBackupEscrowActivity;
  v8 = [(SecureBackupEscrowActivity *)&v15 init];
  if (v8)
  {
    v9 = [v6 activityId];
    [(SecureBackupEscrowActivity *)v8 setId:v9];

    v10 = [v7 currentBootId];
    [(SecureBackupEscrowActivity *)v8 setBootId:v10];

    -[SecureBackupEscrowActivity setPid:](v8, "setPid:", [v7 currentPID]);
    v11 = [[SecureBackupEscrowOperation alloc] initWithEvent:v6 parentActivity:v8 context:v7];
    v16 = v11;
    v12 = [NSArray arrayWithObjects:&v16 count:1];
    [(SecureBackupEscrowActivity *)v8 setOperations:v12];

    [(SecureBackupEscrowActivity *)v8 setAllOperationsComplete:[(SecureBackupEscrowOperation *)v11 isComplete]];
    v13 = v8;
  }

  return v8;
}

- (SecureBackupEscrowActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SecureBackupEscrowActivity;
  v5 = [(SecureBackupEscrowActivity *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    if (v6)
    {
      v7 = objc_opt_self();

      id = v5->_id;
      v5->_id = v7;

      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bootId"];
      if (v6)
      {
        v9 = objc_opt_self();

        bootId = v5->_bootId;
        v5->_bootId = v9;

        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
        v6 = v11;
        if (v11)
        {
          v12 = [(SecureBackupEscrowActivity *)v11 intValue];

          v5->_pid = v12;
          v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allOperationsComplete"];
          v6 = v13;
          if (v13)
          {
            v14 = [(SecureBackupEscrowActivity *)v13 BOOLValue];

            v5->_allOperationsComplete = v14;
            v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"someOperationsReaped"];
            v6 = v15;
            if (v15)
            {
              v16 = [(SecureBackupEscrowActivity *)v15 BOOLValue];

              v5->_someOperationsReaped = v16;
              v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"operations"];
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

- (void)encodeWithCoder:(id)a3
{
  id = self->_id;
  v8 = a3;
  [v8 encodeObject:id forKey:@"id"];
  [v8 encodeObject:self->_bootId forKey:@"bootId"];
  v5 = [NSNumber numberWithInt:self->_pid];
  [v8 encodeObject:v5 forKey:@"pid"];

  v6 = [NSNumber numberWithBool:self->_allOperationsComplete];
  [v8 encodeObject:v6 forKey:@"allOperationsComplete"];

  v7 = [NSNumber numberWithBool:self->_someOperationsReaped];
  [v8 encodeObject:v7 forKey:@"someOperationsReaped"];

  [v8 encodeObject:self->_operations forKey:@"operations"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SecureBackupEscrowActivity *)self id];
  v7 = [v6 copyWithZone:a3];
  [v5 setId:v7];

  v8 = [(SecureBackupEscrowActivity *)self bootId];
  v9 = [v8 copyWithZone:a3];
  [v5 setBootId:v9];

  [v5 setPid:{-[SecureBackupEscrowActivity pid](self, "pid")}];
  [v5 setAllOperationsComplete:{-[SecureBackupEscrowActivity allOperationsComplete](self, "allOperationsComplete")}];
  [v5 setSomeOperationsReaped:{-[SecureBackupEscrowActivity someOperationsReaped](self, "someOperationsReaped")}];
  v10 = [(SecureBackupEscrowActivity *)self operations];
  v11 = [v10 copyWithZone:a3];
  [v5 setOperations:v11];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

    v11 = [(SecureBackupEscrowActivity *)self bootId];
    v12 = [v5 bootId];
    if ([v11 isEqual:v12])
    {
    }

    else
    {
      v13 = [(SecureBackupEscrowActivity *)self bootId];
      v14 = [v5 bootId];

      if (v13 != v14)
      {
        goto LABEL_12;
      }
    }

    v15 = [(SecureBackupEscrowActivity *)self pid];
    if (v15 == [v5 pid])
    {
      v16 = [(SecureBackupEscrowActivity *)self allOperationsComplete];
      if (v16 == [v5 allOperationsComplete])
      {
        v17 = [(SecureBackupEscrowActivity *)self someOperationsReaped];
        if (v17 == [v5 someOperationsReaped])
        {
          v19 = [(SecureBackupEscrowActivity *)self operations];
          v20 = [v5 operations];
          if ([v19 isEqual:v20])
          {

            v8 = 1;
          }

          else
          {
            v21 = [(SecureBackupEscrowActivity *)self operations];
            v22 = [v5 operations];
            v8 = v21 == v22;
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