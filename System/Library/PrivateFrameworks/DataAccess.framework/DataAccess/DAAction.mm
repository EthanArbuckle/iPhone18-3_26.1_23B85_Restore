@interface DAAction
- (BOOL)isEqual:(id)equal;
- (DAAction)initWithCoder:(id)coder;
- (DAAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item serverId:(id)id;
- (DAAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item serverId:(id)id instanceId:(id)instanceId;
- (id)description;
- (id)stringForItemChangeType:(unint64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAAction

- (DAAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item serverId:(id)id
{
  itemCopy = item;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = DAAction;
  v11 = [(DAAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_itemChangeType = type;
    objc_storeStrong(&v11->_changedItem, item);
    objc_storeStrong(&v12->_serverId, id);
    v12->_changeId = -1;
  }

  return v12;
}

- (DAAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item serverId:(id)id instanceId:(id)instanceId
{
  itemCopy = item;
  idCopy = id;
  instanceIdCopy = instanceId;
  v17.receiver = self;
  v17.super_class = DAAction;
  v14 = [(DAAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_itemChangeType = type;
    objc_storeStrong(&v14->_changedItem, item);
    objc_storeStrong(&v15->_serverId, id);
    objc_storeStrong(&v15->_instanceId, instanceId);
    v15->_changeId = -1;
  }

  return v15;
}

- (id)stringForItemChangeType:(unint64_t)type
{
  if (type >= 0xB)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%lu)", type];
  }

  else
  {
    type = off_278F13490[type];
  }

  return type;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DAAction *)self stringForItemChangeType:[(DAAction *)self itemChangeType]];
  changedItem = [(DAAction *)self changedItem];
  serverId = [(DAAction *)self serverId];
  if ([(DAAction *)self changeId]== -1)
  {
    v9 = [v3 stringWithFormat:@"<%@: %p> { Change type: %@, ChangedItem: %@ serverId: %@%@}", v4, self, v5, changedItem, serverId, &stru_285AA6518];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@", Change id: %d", -[DAAction changeId](self, "changeId")];
    v9 = [v3 stringWithFormat:@"<%@: %p> { Change type: %@, ChangedItem: %@ serverId: %@%@}", v4, self, v5, changedItem, serverId, v8];
  }

  return v9;
}

- (DAAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAAction initWithCoder:];
  }

  v12.receiver = self;
  v12.super_class = DAAction;
  v5 = [(DAAction *)&v12 init];
  if (v5)
  {
    -[DAAction setItemChangeType:](v5, "setItemChangeType:", [coderCopy decodeIntForKey:@"DAAItemChangeType"]);
    v6 = NSClassFromString(&cfstr_Aschangedcolle.isa);
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), v6, 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"DAAChangedItem"];
    [(DAAction *)v5 _setChangedItem:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAAServerId"];
    [(DAAction *)v5 setServerId:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAAInstanceId"];
    [(DAAction *)v5 setInstanceId:v10];

    -[DAAction setChangeId:](v5, "setChangeId:", [coderCopy decodeIntForKey:@"DAAChangeId"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAAction encodeWithCoder:];
  }

  [coderCopy encodeInt:-[DAAction itemChangeType](self forKey:{"itemChangeType"), @"DAAItemChangeType"}];
  changedItem = [(DAAction *)self changedItem];
  [coderCopy encodeObject:changedItem forKey:@"DAAChangedItem"];

  serverId = [(DAAction *)self serverId];
  [coderCopy encodeObject:serverId forKey:@"DAAServerId"];

  instanceId = [(DAAction *)self instanceId];
  [coderCopy encodeObject:instanceId forKey:@"DAAInstanceId"];

  [coderCopy encodeInt:-[DAAction changeId](self forKey:{"changeId"), @"DAAChangeId"}];
}

- (unint64_t)hash
{
  changedItem = [(DAAction *)self changedItem];
  v4 = [changedItem hash];
  serverId = [(DAAction *)self serverId];
  v6 = [serverId hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      itemChangeType = [(DAAction *)v9 itemChangeType];
      if (itemChangeType != [(DAAction *)self itemChangeType])
      {
        v15 = 0;
LABEL_28:

        goto LABEL_29;
      }

      changedItem = [(DAAction *)v9 changedItem];
      if (changedItem || ([(DAAction *)self changedItem], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        changedItem2 = [(DAAction *)v9 changedItem];
        changedItem3 = [(DAAction *)self changedItem];
        v12 = [changedItem2 isEqual:changedItem3];
        v13 = 1;
        LOBYTE(changeId) = 1;
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
      v23 = changedItem3;
      serverId = [(DAAction *)v9 serverId];
      if (serverId || ([(DAAction *)self serverId], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        serverId2 = [(DAAction *)v9 serverId];
        changedItem3 = [(DAAction *)self serverId];
        changeId = 1;
        if (![serverId2 isEqual:changedItem3])
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = 0;
        changeId = 0;
      }

      v22 = changedItem2;
      v17 = v4;
      v18 = changeId;
      changeId = [(DAAction *)v9 changeId];
      LOBYTE(changeId) = changeId != [(DAAction *)self changeId];
      if (!v18)
      {
        v4 = v17;
        changedItem2 = v22;
        if (serverId)
        {
LABEL_20:

          if (v24)
          {
            changedItem3 = v23;
LABEL_24:
          }

LABEL_25:
          if (!changedItem)
          {
          }

          v15 = changeId ^ 1;
          goto LABEL_28;
        }

LABEL_23:

        changedItem3 = v23;
        if (v24)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v4 = v17;
      changedItem2 = v22;
LABEL_19:

      if (serverId)
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