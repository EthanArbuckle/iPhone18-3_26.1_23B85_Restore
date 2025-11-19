@interface DAAction
- (BOOL)isEqual:(id)a3;
- (DAAction)initWithCoder:(id)a3;
- (DAAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 serverId:(id)a5;
- (DAAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 serverId:(id)a5 instanceId:(id)a6;
- (id)description;
- (id)stringForItemChangeType:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAAction

- (DAAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 serverId:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DAAction;
  v11 = [(DAAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_itemChangeType = a3;
    objc_storeStrong(&v11->_changedItem, a4);
    objc_storeStrong(&v12->_serverId, a5);
    v12->_changeId = -1;
  }

  return v12;
}

- (DAAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 serverId:(id)a5 instanceId:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DAAction;
  v14 = [(DAAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_itemChangeType = a3;
    objc_storeStrong(&v14->_changedItem, a4);
    objc_storeStrong(&v15->_serverId, a5);
    objc_storeStrong(&v15->_instanceId, a6);
    v15->_changeId = -1;
  }

  return v15;
}

- (id)stringForItemChangeType:(unint64_t)a3
{
  if (a3 > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_278D4C5B0[a3];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DAAction *)self stringForItemChangeType:[(DAAction *)self itemChangeType]];
  v6 = [(DAAction *)self changedItem];
  v7 = [(DAAction *)self serverId];
  if ([(DAAction *)self changeId]== -1)
  {
    v9 = [v3 stringWithFormat:@"<%@: %p> { Change type: %@, ChangedItem: %@ serverId: %@%@}", v4, self, v5, v6, v7, &stru_2854B2770];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@", Change id: %d", -[DAAction changeId](self, "changeId")];
    v9 = [v3 stringWithFormat:@"<%@: %p> { Change type: %@, ChangedItem: %@ serverId: %@%@}", v4, self, v5, v6, v7, v8];
  }

  return v9;
}

- (DAAction)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAAction initWithCoder:];
  }

  v17.receiver = self;
  v17.super_class = DAAction;
  v5 = [(DAAction *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeIntForKey:@"DAAItemChangeType"];
    v7 = v6;
    if (v6 >= 0xA)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277CF3AF0] + 2);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 134217984;
        v19 = v7;
        _os_log_impl(&dword_24244C000, v8, v9, "Unknown DAItemChangeType %ld", buf, 0xCu);
      }

      v7 = 1;
    }

    [(DAAction *)v5 setItemChangeType:v7];
    v10 = NSClassFromString(&cfstr_Aschangedcolle.isa);
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), v10, 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"DAAChangedItem"];
    [(DAAction *)v5 _setChangedItem:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAAServerId"];
    [(DAAction *)v5 setServerId:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAAInstanceId"];
    [(DAAction *)v5 setInstanceId:v14];

    -[DAAction setChangeId:](v5, "setChangeId:", [v4 decodeIntForKey:@"DAAChangeId"]);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  if (([v7 allowsKeyedCoding] & 1) == 0)
  {
    [DAAction encodeWithCoder:];
  }

  [v7 encodeInt:-[DAAction itemChangeType](self forKey:{"itemChangeType"), @"DAAItemChangeType"}];
  v4 = [(DAAction *)self changedItem];
  [v7 encodeObject:v4 forKey:@"DAAChangedItem"];

  v5 = [(DAAction *)self serverId];
  [v7 encodeObject:v5 forKey:@"DAAServerId"];

  v6 = [(DAAction *)self instanceId];
  [v7 encodeObject:v6 forKey:@"DAAInstanceId"];

  [v7 encodeInt:-[DAAction changeId](self forKey:{"changeId"), @"DAAChangeId"}];
}

- (unint64_t)hash
{
  v3 = [(DAAction *)self changedItem];
  v4 = [v3 hash];
  v5 = [(DAAction *)self serverId];
  v6 = [v5 hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(DAAction *)v9 itemChangeType];
      if (v10 != [(DAAction *)self itemChangeType])
      {
        v15 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v11 = [(DAAction *)v9 changedItem];
      if (v11 || ([(DAAction *)self changedItem], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v5 = [(DAAction *)v9 changedItem];
        v3 = [(DAAction *)self changedItem];
        v12 = [v5 isEqual:v3];
        v13 = 1;
        LOBYTE(v14) = 1;
        if (!v12)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = 0;
      }

      v24 = v13;
      v23 = v3;
      v16 = [(DAAction *)v9 serverId];
      if (v16 || ([(DAAction *)self serverId], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v6 = [(DAAction *)v9 serverId];
        v3 = [(DAAction *)self serverId];
        v14 = 1;
        if (![v6 isEqual:v3])
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = 0;
        v14 = 0;
      }

      v22 = v5;
      v17 = v4;
      v18 = v14;
      v14 = [(DAAction *)v9 changeId];
      LOBYTE(v14) = v14 != [(DAAction *)self changeId];
      if (!v18)
      {
        v4 = v17;
        v5 = v22;
        if (v16)
        {
LABEL_20:

          if (v24)
          {
            v3 = v23;
LABEL_24:
          }

LABEL_25:
          if (!v11)
          {
          }

          v15 = v14 ^ 1;
          goto LABEL_28;
        }

LABEL_23:

        v3 = v23;
        if (v24)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v4 = v17;
      v5 = v22;
LABEL_19:

      if (v16)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v15 = 0;
  }

LABEL_29:

  return v15;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end