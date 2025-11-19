@interface ESAccountClassNames
- (id)description;
@end

@implementation ESAccountClassNames

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n\tAccountClassName=%@\n\tClientAccountClassName=%@\n\tDaemonAccountClassName=%@\n\tAgentClassName=%@", v5, self->_accountClassName, self->_clientAccountClassName, self->_daemonAccountClassName, self->_agentClassName];

  return v6;
}

@end