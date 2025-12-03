@interface _UIDynamicFocusGroupMap
- (_UIDynamicFocusGroupMap)init;
- (_UIDynamicFocusGroupMap)initWithBackingFocusGroupMap:(id)map;
- (_UIDynamicFocusGroupMap)initWithCoordinateSpace:(id)space;
- (id)focusGroupIdentifierForItem:(id)item;
@end

@implementation _UIDynamicFocusGroupMap

- (_UIDynamicFocusGroupMap)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"-init is not a valid initializer for %@", v6}];

  return 0;
}

- (_UIDynamicFocusGroupMap)initWithCoordinateSpace:(id)space
{
  spaceCopy = space;
  v10.receiver = self;
  v10.super_class = _UIDynamicFocusGroupMap;
  v5 = [(_UIDynamicFocusGroupMap *)&v10 init];
  if (v5)
  {
    v6 = [_UIFocusGroupMap alloc];
    v7 = [(_UIFocusGroupMap *)v6 initWithItems:MEMORY[0x277CBEBF8] coordinateSpace:spaceCopy];
    impl = v5->_impl;
    v5->_impl = v7;
  }

  return v5;
}

- (_UIDynamicFocusGroupMap)initWithBackingFocusGroupMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = _UIDynamicFocusGroupMap;
  v5 = [(_UIDynamicFocusGroupMap *)&v9 init];
  if (v5)
  {
    v6 = [mapCopy copy];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (id)focusGroupIdentifierForItem:(id)item
{
  itemCopy = item;
  v5 = [(_UIFocusGroupMap *)self->_impl focusGroupForItem:itemCopy];
  if (!v5)
  {
    v5 = [(_UIFocusGroupMap *)self->_impl _indexEnvironment:itemCopy];
  }

  identifier = [v5 identifier];

  return identifier;
}

@end