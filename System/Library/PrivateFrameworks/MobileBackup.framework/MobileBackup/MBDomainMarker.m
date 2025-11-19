@interface MBDomainMarker
- (BOOL)isDomainMarkedAsModified:(id)a3;
- (MBDomainMarker)init;
- (NSSet)modifiedDomainNames;
- (NSSet)unmodifiedDomainNames;
- (void)markModifiedDomain:(id)a3;
- (void)markUnmodifiedDomain:(id)a3;
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

- (void)markModifiedDomain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_unmodifiedDomainNames removeObject:v4];
  [(NSMutableSet *)self->_modifiedDomainNames addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)markUnmodifiedDomain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_modifiedDomainNames removeObject:v4];
  [(NSMutableSet *)self->_unmodifiedDomainNames addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isDomainMarkedAsModified:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_modifiedDomainNames containsObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

@end