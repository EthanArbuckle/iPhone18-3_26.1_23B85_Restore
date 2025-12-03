@interface DNDSystemAction
+ (BOOL)runtimeIsSupported:(id *)supported;
- (BOOL)isEqual:(id)equal;
- (DNDSystemAction)initWithAction:(id)action enabled:(BOOL)enabled;
- (DNDSystemAction)initWithCoder:(id)coder;
- (NSString)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDSystemAction

+ (BOOL)runtimeIsSupported:(id *)supported
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (!NSClassFromString(&cfstr_Wftogglesettin.isa) || !NSClassFromString(&cfstr_Wfreverseconte.isa))
  {
    v5 = DNDLogAppConfiguration;
    if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSystemAction runtimeIsSupported:v5];
      if (!supported)
      {
        goto LABEL_7;
      }
    }

    else if (!supported)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    v6 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"Failed to store system action: VoiceShortcutClient framework is not loaded.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *supported = [v6 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v7];

    goto LABEL_7;
  }

  result = 1;
LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (DNDSystemAction)initWithAction:(id)action enabled:(BOOL)enabled
{
  actionCopy = action;
  if ([objc_opt_class() runtimeIsSupported:0])
  {
    v12.receiver = self;
    v12.super_class = DNDSystemAction;
    v8 = [(DNDSystemAction *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_action, action);
      v9->_enabled = enabled;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)identifier
{
  action = [(DNDSystemAction *)self action];
  identifier = [action identifier];

  return identifier;
}

- (DNDSystemAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([objc_opt_class() runtimeIsSupported:0])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionEnabled"];
    bOOLValue = [v5 BOOLValue];
    v7 = [coderCopy decodeObjectOfClass:NSClassFromString(&cfstr_Wftogglesettin.isa) forKey:@"DNDActionAction"];
    v8 = [coderCopy decodeObjectOfClass:NSClassFromString(&cfstr_Wfreverseconte.isa) forKey:@"DNDActionReverseAction"];
    self = [(DNDSystemAction *)self initWithAction:v7 reverseAction:v8 enabled:bOOLValue];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  enabled = self->_enabled;
  coderCopy = coder;
  v6 = [v4 numberWithBool:enabled];
  [coderCopy encodeObject:v6 forKey:@"DNDActionEnabled"];

  [coderCopy encodeObject:self->_action forKey:@"DNDActionAction"];
  [coderCopy encodeObject:self->_reverseAction forKey:@"DNDActionReverseAction"];
}

- (unint64_t)hash
{
  action = [(DNDSystemAction *)self action];
  v4 = [action hash];
  reverseAction = [(DNDSystemAction *)self reverseAction];
  v6 = [reverseAction hash] ^ v4;
  isEnabled = [(DNDSystemAction *)self isEnabled];

  return v6 ^ isEnabled;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      action = [(DNDSystemAction *)self action];
      action2 = [(DNDSystemAction *)v8 action];
      if (action != action2)
      {
        action3 = [(DNDSystemAction *)self action];
        if (!action3)
        {
          LOBYTE(v14) = 0;
          goto LABEL_27;
        }

        v3 = action3;
        action4 = [(DNDSystemAction *)v8 action];
        if (!action4)
        {
          LOBYTE(v14) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = action4;
        action5 = [(DNDSystemAction *)self action];
        action6 = [(DNDSystemAction *)v8 action];
        if (![action5 isEqual:action6])
        {
          LOBYTE(v14) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = action6;
        v27 = action5;
        v28 = v4;
      }

      reverseAction = [(DNDSystemAction *)self reverseAction];
      reverseAction2 = [(DNDSystemAction *)v8 reverseAction];
      if (reverseAction == reverseAction2)
      {
        goto LABEL_16;
      }

      reverseAction3 = [(DNDSystemAction *)self reverseAction];
      if (!reverseAction3)
      {

        LOBYTE(v14) = 0;
        goto LABEL_24;
      }

      action6 = reverseAction3;
      reverseAction4 = [(DNDSystemAction *)v8 reverseAction];
      if (!reverseAction4)
      {
        LOBYTE(v14) = 0;
        goto LABEL_22;
      }

      v24 = reverseAction4;
      reverseAction5 = [(DNDSystemAction *)self reverseAction];
      reverseAction6 = [(DNDSystemAction *)v8 reverseAction];
      v25 = reverseAction5;
      v21 = reverseAction5;
      v4 = reverseAction6;
      if ([v21 isEqual:reverseAction6])
      {
LABEL_16:
        isEnabled = [(DNDSystemAction *)self isEnabled];
        v14 = isEnabled ^ [(DNDSystemAction *)v8 isEnabled]^ 1;
        if (reverseAction == reverseAction2)
        {
LABEL_23:

LABEL_24:
          action5 = v27;
          v4 = v28;
          action6 = v26;
          if (action != action2)
          {
            goto LABEL_25;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

LABEL_22:
      goto LABEL_23;
    }

    LOBYTE(v14) = 0;
  }

LABEL_28:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(DNDSystemAction *)self identifier];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSystemAction isEnabled](self, "isEnabled")}];
  action = [(DNDSystemAction *)self action];
  reverseAction = [(DNDSystemAction *)self reverseAction];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@; enabled: %@; action: %@; reverse: %@>", v4, self, identifier, v6, action, reverseAction];;

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  action = self->_action;
  reverseAction = self->_reverseAction;
  enabled = self->_enabled;

  return [v4 initWithAction:action reverseAction:reverseAction enabled:enabled];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableSystemAction allocWithZone:zone];
  action = self->_action;
  reverseAction = self->_reverseAction;
  enabled = self->_enabled;

  return [(DNDSystemAction *)v4 initWithAction:action reverseAction:reverseAction enabled:enabled];
}

@end