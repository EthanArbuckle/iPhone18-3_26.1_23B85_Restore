@interface _SUUIInspectablePropertySection
- (_SUUIInspectablePropertySection)init;
@end

@implementation _SUUIInspectablePropertySection

- (_SUUIInspectablePropertySection)init
{
  v6.receiver = self;
  v6.super_class = _SUUIInspectablePropertySection;
  v2 = [(_SUUIInspectablePropertySection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    properties = v2->_properties;
    v2->_properties = v3;
  }

  return v2;
}

@end