@interface SFEditableProperty
+ (id)BOOLValue:(BOOL)value named:(id)named;
+ (id)compoundValueNamed:(id)named components:(id)components;
+ (id)edgeInsetsValue:(double)value named:(double)named min:(double)min max:(double)max roundedTo:(double)to;
+ (id)floatValue:(double)value named:(id)named min:(double)min max:(double)max roundedTo:(double)to;
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (SFEditableProperty)init;
- (UIEdgeInsets)edgeInsetsValue;
- (double)floatValue;
- (id)copyWithZone:(void *)zone;
- (id)objectForKeyedSubscript:(id)subscript;
- (int64_t)hash;
- (void)setName:(id)name;
@end

@implementation SFEditableProperty

- (UIEdgeInsets)edgeInsetsValue
{
  selfCopy = self;
  v3 = sub_18BB33C40();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (double)floatValue
{
  result = *(self + OBJC_IVAR___SFEditableProperty_value);
  if (*(self + OBJC_IVAR___SFEditableProperty_value + 32) != 2)
  {
    return 0.0;
  }

  return result;
}

- (NSString)name
{
  sub_18BC1E3F8();
  v2 = sub_18BC20B98();

  return v2;
}

- (void)setName:(id)name
{
  v4 = sub_18BC20BD8();
  v5 = (self + OBJC_IVAR___SFEditableProperty_name);
  *v5 = v4;
  v5[1] = v6;
}

+ (id)BOOLValue:(BOOL)value named:(id)named
{
  valueCopy = value;
  v5 = sub_18BC20BD8();
  v7 = v6;
  v8 = objc_allocWithZone(SFEditableProperty);
  v9 = &v8[OBJC_IVAR___SFEditableProperty_name];
  *v9 = v5;
  v9[1] = v7;
  v10 = &v8[OBJC_IVAR___SFEditableProperty_value];
  *v10 = valueCopy;
  *(v10 + 1) = 0;
  v10[32] = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v13.receiver = v8;
  v13.super_class = SFEditableProperty;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

+ (id)compoundValueNamed:(id)named components:(id)components
{
  v4 = sub_18BC20BD8();
  v6 = v5;
  type metadata accessor for SFEditableProperty(v4);
  v7 = sub_18BC20D98();
  v8 = objc_allocWithZone(SFEditableProperty);
  v9 = &v8[OBJC_IVAR___SFEditableProperty_name];
  *v9 = v4;
  v9[1] = v6;
  v10 = &v8[OBJC_IVAR___SFEditableProperty_value];
  *v10 = v7;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v10[32] = 1;
  v13.receiver = v8;
  v13.super_class = SFEditableProperty;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

+ (id)edgeInsetsValue:(double)value named:(double)named min:(double)min max:(double)max roundedTo:(double)to
{
  sub_18BC20BD8();
  v28 = sub_18BB36D70(self, a2, value, named, min, max, to, a8, a9, a10, a11, a12, a13);

  return v28;
}

+ (id)floatValue:(double)value named:(id)named min:(double)min max:(double)max roundedTo:(double)to
{
  result = sub_18BC20BD8();
  if (min > max)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v12;
    v15 = objc_allocWithZone(SFEditableProperty);
    v16 = &v15[OBJC_IVAR___SFEditableProperty_name];
    *v16 = v13;
    *(v16 + 1) = v14;
    v17 = &v15[OBJC_IVAR___SFEditableProperty_value];
    *v17 = value;
    v17[1] = min;
    v17[2] = max;
    v17[3] = to;
    *(v17 + 32) = 2;
    v19.receiver = v15;
    v19.super_class = SFEditableProperty;
    v18 = objc_msgSendSuper2(&v19, sel_init);

    return v18;
  }

  return result;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v4 = sub_18BC20BD8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_18BB34328(v4, v6);

  return v8;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  name = [(SFEditableProperty *)selfCopy name];
  v5 = sub_18BC20BD8();
  v7 = v6;

  v8 = *(selfCopy + OBJC_IVAR___SFEditableProperty_value);
  v9 = *(selfCopy + OBJC_IVAR___SFEditableProperty_value + 8);
  v10 = *(selfCopy + OBJC_IVAR___SFEditableProperty_value + 16);
  v11 = *(selfCopy + OBJC_IVAR___SFEditableProperty_value + 24);
  v12 = *(selfCopy + OBJC_IVAR___SFEditableProperty_value + 32);
  v13 = objc_allocWithZone(SFEditableProperty);
  v14 = &v13[OBJC_IVAR___SFEditableProperty_name];
  *v14 = v5;
  v14[1] = v7;
  v15 = &v13[OBJC_IVAR___SFEditableProperty_value];
  *v15 = v8;
  *(v15 + 1) = v9;
  *(v15 + 2) = v10;
  *(v15 + 3) = v11;
  v15[32] = v12;
  sub_18B9882C8(v8, v9, v10, v11, v12);
  v18.receiver = v13;
  v18.super_class = SFEditableProperty;
  v16 = [(SFEditableProperty *)&v18 init];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SFEditableProperty.isEqual(_:)(v8);

  sub_18B7E0F80(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SFEditableProperty.hash.getter();

  return v3;
}

- (SFEditableProperty)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end