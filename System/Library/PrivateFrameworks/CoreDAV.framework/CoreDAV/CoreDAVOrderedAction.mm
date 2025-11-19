@interface CoreDAVOrderedAction
- (id)description;
@end

@implementation CoreDAVOrderedAction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = *&self->_absoluteOrder;
  return [v3 stringWithFormat:@"<%@: %p> { Change type %d, Absolute Order %d prior url %@, Context: %@ }", v4, self, self->super._action, *(&self->super._ignoresGuardianRestrictions + 1), v5, self->super._context];
}

@end