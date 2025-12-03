@interface MBDomainMarker
- (BOOL)isDomainMarkedAsModified:(id)modified;
- (MBDomainMarker)init;
- (NSSet)modifiedDomainNames;
- (NSSet)unmodifiedDomainNames;
- (void)markModifiedDomain:(id)domain;
- (void)markUnmodifiedDomain:(id)domain;
@end

@implementation MBDomainMarker

- (MBDomainMarker)init
{
  v9.receiver = self;
  v9.super_class = MBDomainMarker;
  v2 = [(MBDomainMarker *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    unmodifiedDomainNames = v3->_unmodifiedDomainNames;
    v3->_unmodifiedDomainNames = v4;

    v6 = objc_opt_new();
    modifiedDomainNames = v3->_modifiedDomainNames;
    v3->_modifiedDomainNames = v6;
  }

  return v3;
}

- (NSSet)modifiedDomainNames
{
  v2 = [(NSMutableSet *)self->_modifiedDomainNames copy];

  return v2;
}

- (NSSet)unmodifiedDomainNames
{
  v2 = [(NSMutableSet *)self->_unmodifiedDomainNames copy];

  return v2;
}

- (void)markModifiedDomain:(id)domain
{
  domainCopy = domain;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_unmodifiedDomainNames removeObject:domainCopy];
  [(NSMutableSet *)self->_modifiedDomainNames addObject:domainCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)markUnmodifiedDomain:(id)domain
{
  domainCopy = domain;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_modifiedDomainNames removeObject:domainCopy];
  [(NSMutableSet *)self->_unmodifiedDomainNames addObject:domainCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isDomainMarkedAsModified:(id)modified
{
  modifiedCopy = modified;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_modifiedDomainNames containsObject:modifiedCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

@end