@interface _PADAuditDataRepository
- (_PADAuditDataRepository)init;
@end

@implementation _PADAuditDataRepository

- (_PADAuditDataRepository)init
{
  v6.receiver = self;
  v6.super_class = _PADAuditDataRepository;
  v2 = [(_PADAuditDataRepository *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC10CoreIDVPAD30PADInternalAuditDataRepository);
    auditDataRepository = v2->_auditDataRepository;
    v2->_auditDataRepository = v3;
  }

  return v2;
}

@end