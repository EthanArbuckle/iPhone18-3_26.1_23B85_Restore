@interface DNDSystemAction
+ (BOOL)runtimeIsSupported:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (DNDSystemAction)initWithAction:(id)a3 enabled:(BOOL)a4;
- (DNDSystemAction)initWithCoder:(id)a3;
- (NSString)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDSystemAction

+ (BOOL)runtimeIsSupported:(id *)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (!NSClassFromString(&cfstr_Wftogglesettin.isa) || !NSClassFromString(&cfstr_Wfreverseconte.isa))
  {
    v5 = DNDLogAppConfiguration;
    if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSystemAction runtimeIsSupported:v5];
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    else if (!a3)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    v6 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"Failed to store system action: VoiceShortcutClient framework is not loaded.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a3 = [v6 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v7];

    goto LABEL_7;
  }

  result = 1;
LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (DNDSystemAction)initWithAction:(id)a3 enabled:(BOOL)a4
{
  v7 = a3;
  if ([objc_opt_class() runtimeIsSupported:0])
  {
    v12.receiver = self;
    v12.super_class = DNDSystemAction;
    v8 = [(DNDSystemAction *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_action, a3);
      v9->_enabled = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)identifier
{
  v2 = [(DNDSystemAction *)self action];
  v3 = [v2 identifier];

  return v3;
}

- (DNDSystemAction)initWithCoder:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() runtimeIsSupported:0])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionEnabled"];
    v6 = [v5 BOOLValue];
    v7 = [v4 decodeObjectOfClass:NSClassFromString(&cfstr_Wftogglesettin.isa) forKey:@"DNDActionAction"];
    v8 = [v4 decodeObjectOfClass:NSClassFromString(&cfstr_Wfreverseconte.isa) forKey:@"DNDActionReverseAction"];
    self = [(DNDSystemAction *)self initWithAction:v7 reverseAction:v8 enabled:v6];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  enabled = self->_enabled;
  v7 = a3;
  v6 = [v4 numberWithBool:enabled];
  [v7 encodeObject:v6 forKey:@"DNDActionEnabled"];

  [v7 encodeObject:self->_action forKey:@"DNDActionAction"];
  [v7 encodeObject:self->_reverseAction forKey:@"DNDActionReverseAction"];
}

- (unint64_t)hash
{
  v3 = [(DNDSystemAction *)self action];
  v4 = [v3 hash];
  v5 = [(DNDSystemAction *)self reverseAction];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSystemAction *)self isEnabled];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(DNDSystemAction *)self action];
      v10 = [(DNDSystemAction *)v8 action];
      if (v9 != v10)
      {
        v11 = [(DNDSystemAction *)self action];
        if (!v11)
        {
          LOBYTE(v14) = 0;
          goto LABEL_27;
        }

        v3 = v11;
        v12 = [(DNDSystemAction *)v8 action];
        if (!v12)
        {
          LOBYTE(v14) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = v12;
        v13 = [(DNDSystemAction *)self action];
        v5 = [(DNDSystemAction *)v8 action];
        if (![v13 isEqual:v5])
        {
          LOBYTE(v14) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = v5;
        v27 = v13;
        v28 = v4;
      }

      v15 = [(DNDSystemAction *)self reverseAction];
      v16 = [(DNDSystemAction *)v8 reverseAction];
      if (v15 == v16)
      {
        goto LABEL_16;
      }

      v17 = [(DNDSystemAction *)self reverseAction];
      if (!v17)
      {

        LOBYTE(v14) = 0;
        goto LABEL_24;
      }

      v5 = v17;
      v18 = [(DNDSystemAction *)v8 reverseAction];
      if (!v18)
      {
        LOBYTE(v14) = 0;
        goto LABEL_22;
      }

      v24 = v18;
      v19 = [(DNDSystemAction *)self reverseAction];
      v20 = [(DNDSystemAction *)v8 reverseAction];
      v25 = v19;
      v21 = v19;
      v4 = v20;
      if ([v21 isEqual:v20])
      {
LABEL_16:
        v22 = [(DNDSystemAction *)self isEnabled];
        v14 = v22 ^ [(DNDSystemAction *)v8 isEnabled]^ 1;
        if (v15 == v16)
        {
LABEL_23:

LABEL_24:
          v13 = v27;
          v4 = v28;
          v5 = v26;
          if (v9 != v10)
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
  v5 = [(DNDSystemAction *)self identifier];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSystemAction isEnabled](self, "isEnabled")}];
  v7 = [(DNDSystemAction *)self action];
  v8 = [(DNDSystemAction *)self reverseAction];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@; enabled: %@; action: %@; reverse: %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  action = self->_action;
  reverseAction = self->_reverseAction;
  enabled = self->_enabled;

  return [v4 initWithAction:action reverseAction:reverseAction enabled:enabled];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableSystemAction allocWithZone:a3];
  action = self->_action;
  reverseAction = self->_reverseAction;
  enabled = self->_enabled;

  return [(DNDSystemAction *)v4 initWithAction:action reverseAction:reverseAction enabled:enabled];
}

@end