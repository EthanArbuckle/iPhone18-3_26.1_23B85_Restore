@interface _UIDynamicFocusGroupMap
- (_UIDynamicFocusGroupMap)init;
- (_UIDynamicFocusGroupMap)initWithBackingFocusGroupMap:(id)a3;
- (_UIDynamicFocusGroupMap)initWithCoordinateSpace:(id)a3;
- (id)focusGroupIdentifierForItem:(id)a3;
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

- (_UIDynamicFocusGroupMap)initWithCoordinateSpace:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIDynamicFocusGroupMap;
  v5 = [(_UIDynamicFocusGroupMap *)&v10 init];
  if (v5)
  {
    v6 = [_UIFocusGroupMap alloc];
    v7 = [(_UIFocusGroupMap *)v6 initWithItems:MEMORY[0x277CBEBF8] coordinateSpace:v4];
    impl = v5->_impl;
    v5->_impl = v7;
  }

  return v5;
}

- (_UIDynamicFocusGroupMap)initWithBackingFocusGroupMap:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIDynamicFocusGroupMap;
  v5 = [(_UIDynamicFocusGroupMap *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (id)focusGroupIdentifierForItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusGroupMap *)self->_impl focusGroupForItem:v4];
  if (!v5)
  {
    v5 = [(_UIFocusGroupMap *)self->_impl _indexEnvironment:v4];
  }

  v6 = [v5 identifier];

  return v6;
}

@end