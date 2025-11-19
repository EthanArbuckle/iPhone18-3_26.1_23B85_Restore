@interface NDOAMSPropertiesRequestContext
- (NDOAMSPropertiesRequestContext)init;
- (NDOAMSPropertiesRequestContext)initWithRequestType:(unint64_t)a3 serialNumber:(id)a4 universalLinkPath:(id)a5 additionalBody:(id)a6;
- (NSDictionary)additionalBody;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDOAMSPropertiesRequestContext

- (NSDictionary)additionalBody
{
  v2 = *(self + OBJC_IVAR___NDOAMSPropertiesRequestContext_additionalBody);

  v3 = sub_25BD79768();

  return v3;
}

- (NDOAMSPropertiesRequestContext)initWithRequestType:(unint64_t)a3 serialNumber:(id)a4 universalLinkPath:(id)a5 additionalBody:(id)a6
{
  v6 = a5;
  if (!a4)
  {
    v9 = 0;
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v9 = sub_25BD797B8();
  v11 = v10;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = sub_25BD797B8();
  v13 = v12;
LABEL_6:
  v14 = sub_25BD79778();
  *(self + OBJC_IVAR___NDOAMSPropertiesRequestContext_requestType) = a3;
  v15 = (self + OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber);
  *v15 = v9;
  v15[1] = v11;
  v16 = (self + OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath);
  *v16 = v6;
  v16[1] = v13;
  *(self + OBJC_IVAR___NDOAMSPropertiesRequestContext_additionalBody) = v14;
  v18.receiver = self;
  v18.super_class = NDOAMSPropertiesRequestContext;
  return [(NDOAMSPropertiesRequestContext *)&v18 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  NDOAMSPropertiesRequestContext.encode(with:)(v4);
}

- (NDOAMSPropertiesRequestContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end