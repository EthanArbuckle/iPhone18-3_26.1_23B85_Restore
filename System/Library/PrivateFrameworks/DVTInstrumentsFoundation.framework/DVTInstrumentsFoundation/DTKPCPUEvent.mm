@interface DTKPCPUEvent
- (BOOL)isEqual:(id)equal;
- (DTKPCPUEvent)initWithName:(id)name alias:(id)alias definition:(id)definition kpepEvent:(kpep_event *)event;
- (NSString)aliasOrName;
- (id)description;
@end

@implementation DTKPCPUEvent

- (DTKPCPUEvent)initWithName:(id)name alias:(id)alias definition:(id)definition kpepEvent:(kpep_event *)event
{
  nameCopy = name;
  aliasCopy = alias;
  definitionCopy = definition;
  v23.receiver = self;
  v23.super_class = DTKPCPUEvent;
  v13 = [(DTKPCPUEvent *)&v23 init];
  if (v13)
  {
    if (![nameCopy length])
    {
      sub_2480301FC();
    }

    if (!event)
    {
      sub_2480301D0();
    }

    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [aliasCopy copy];
    alias = v13->_alias;
    v13->_alias = v16;

    if ([(NSString *)v13->_alias length])
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v13->_alias, v13->_name];
    }

    else
    {
      v18 = v13->_name;
    }

    displayName = v13->_displayName;
    v13->_displayName = v18;

    v20 = [definitionCopy copy];
    definition = v13->_definition;
    v13->_definition = v20;

    v13->_kpepEvent = event;
  }

  return v13;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = DTKPCPUEvent;
  v3 = [(DTKPCPUEvent *)&v9 description];
  v4 = v3;
  name = self->_name;
  alias = self->_alias;
  if (!alias)
  {
    alias = @"no alias";
  }

  alias = [v3 stringByAppendingFormat:@" %@ (%@)", self->_name, alias];

  return alias;
}

- (NSString)aliasOrName
{
  v3 = [(NSString *)self->_alias length];
  v4 = 32;
  if (!v3)
  {
    v4 = 24;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = self->_name;
    name = [equalCopy name];
    v7 = [(NSString *)name isEqualToString:name];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end