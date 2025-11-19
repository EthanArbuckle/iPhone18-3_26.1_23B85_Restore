@interface EntityKey
+ (id)calendarEventName;
+ (id)currencyName;
+ (id)group;
+ (id)personEntity;
+ (id)userEntity;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntityKey:(id)a3;
- (EntityKey)initWithElementId:(int)a3 edgeElementId:(int)a4 parentElementId:(int)a5;
- (unint64_t)hash;
@end

@implementation EntityKey

- (unint64_t)hash
{
  v3 = [(EntityKey *)self elementId];
  v4 = 31 * ([(EntityKey *)self edgeElementId]+ 961 * v3);
  return v4 + [(EntityKey *)self parentElementId];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(EntityKey *)self isEqualToEntityKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToEntityKey:(id)a3
{
  v4 = a3;
  v5 = [(EntityKey *)self elementId];
  if (v5 == [v4 elementId] && (v6 = -[EntityKey edgeElementId](self, "edgeElementId"), v6 == objc_msgSend(v4, "edgeElementId")))
  {
    v7 = [(EntityKey *)self parentElementId];
    v8 = v7 == [v4 parentElementId];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (EntityKey)initWithElementId:(int)a3 edgeElementId:(int)a4 parentElementId:(int)a5
{
  v9.receiver = self;
  v9.super_class = EntityKey;
  result = [(EntityKey *)&v9 init];
  if (result)
  {
    result->_elementId = a3;
    result->_edgeElementId = a4;
    result->_parentElementId = a5;
  }

  return result;
}

+ (id)personEntity
{
  if (personEntity_onceToken != -1)
  {
    dispatch_once(&personEntity_onceToken, &__block_literal_global_593);
  }

  v3 = personEntity_value;

  return v3;
}

uint64_t __25__EntityKey_personEntity__block_invoke()
{
  personEntity_value = [[EntityKey alloc] initWithElementId:1206 edgeElementId:541 parentElementId:1332];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)currencyName
{
  if (currencyName_onceToken != -1)
  {
    dispatch_once(&currencyName_onceToken, &__block_literal_global_591);
  }

  v3 = currencyName_value;

  return v3;
}

uint64_t __25__EntityKey_currencyName__block_invoke()
{
  currencyName_value = [[EntityKey alloc] initWithElementId:1206 edgeElementId:541 parentElementId:1806];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)group
{
  if (group_onceToken != -1)
  {
    dispatch_once(&group_onceToken, &__block_literal_global_589);
  }

  v3 = group_value;

  return v3;
}

uint64_t __18__EntityKey_group__block_invoke()
{
  group_value = [[EntityKey alloc] initWithElementId:1206 edgeElementId:541 parentElementId:1552];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)calendarEventName
{
  if (calendarEventName_onceToken != -1)
  {
    dispatch_once(&calendarEventName_onceToken, &__block_literal_global_587);
  }

  v3 = calendarEventName_value;

  return v3;
}

uint64_t __30__EntityKey_calendarEventName__block_invoke()
{
  calendarEventName_value = [[EntityKey alloc] initWithElementId:1206 edgeElementId:541 parentElementId:1629];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)userEntity
{
  if (userEntity_onceToken != -1)
  {
    dispatch_once(&userEntity_onceToken, &__block_literal_global_5320);
  }

  v3 = userEntity_value;

  return v3;
}

uint64_t __23__EntityKey_userEntity__block_invoke()
{
  userEntity_value = [[EntityKey alloc] initWithElementId:1206 edgeElementId:2611 parentElementId:2532];

  return MEMORY[0x1EEE66BB8]();
}

@end