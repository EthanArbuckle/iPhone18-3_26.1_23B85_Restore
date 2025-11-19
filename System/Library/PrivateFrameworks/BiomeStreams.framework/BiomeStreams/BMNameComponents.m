@interface BMNameComponents
- (BMNameComponents)initWithNamePrefix:(id)a3 givenName:(id)a4 middleName:(id)a5 previousFamilyName:(id)a6 familyName:(id)a7 nameSuffix:(id)a8 nickname:(id)a9;
- (BMNameComponents)initWithProto:(id)a3;
- (BMNameComponents)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMNameComponents

- (BMNameComponents)initWithNamePrefix:(id)a3 givenName:(id)a4 middleName:(id)a5 previousFamilyName:(id)a6 familyName:(id)a7 nameSuffix:(id)a8 nickname:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = BMNameComponents;
  v18 = [(BMNameComponents *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_namePrefix, a3);
    objc_storeStrong(&v19->_givenName, a4);
    objc_storeStrong(&v19->_middleName, a5);
    objc_storeStrong(&v19->_previousFamilyName, a6);
    objc_storeStrong(&v19->_familyName, a7);
    objc_storeStrong(&v19->_nameSuffix, a8);
    objc_storeStrong(&v19->_nickname, a9);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    namePrefix = self->_namePrefix;
    v7 = [v5 namePrefix];
    if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:namePrefix target:v7])
    {
      givenName = self->_givenName;
      v9 = [v5 givenName];
      if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:givenName target:v9])
      {
        middleName = self->_middleName;
        v11 = [v5 middleName];
        if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:middleName target:v11])
        {
          previousFamilyName = self->_previousFamilyName;
          v13 = [v5 previousFamilyName];
          if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:previousFamilyName target:v13])
          {
            familyName = self->_familyName;
            v21 = [v5 familyName];
            if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:familyName target:?])
            {
              nameSuffix = self->_nameSuffix;
              v16 = [v5 nameSuffix];
              if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:nameSuffix target:v16])
              {
                nickname = self->_nickname;
                v18 = [v5 nickname];
                v19 = [BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:nickname target:v18];
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)encodeAsProto
{
  v2 = [(BMNameComponents *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMNameComponents)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 namePrefix];
    v7 = [v5 givenName];
    v8 = [v5 middleName];
    v9 = [v5 previousFamilyName];
    v10 = [v5 familyName];
    v11 = [v5 nameSuffix];
    v12 = [v5 nickname];

    self = [(BMNameComponents *)self initWithNamePrefix:v6 givenName:v7 middleName:v8 previousFamilyName:v9 familyName:v10 nameSuffix:v11 nickname:v12];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BMNameComponents)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBNameComponents alloc] initWithData:v4];

    self = [(BMNameComponents *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMNameComponents *)self namePrefix];
  [v3 setNamePrefix:v4];

  v5 = [(BMNameComponents *)self givenName];
  [v3 setGivenName:v5];

  v6 = [(BMNameComponents *)self middleName];
  [v3 setMiddleName:v6];

  v7 = [(BMNameComponents *)self previousFamilyName];
  [v3 setPreviousFamilyName:v7];

  v8 = [(BMNameComponents *)self familyName];
  [v3 setFamilyName:v8];

  v9 = [(BMNameComponents *)self nameSuffix];
  [v3 setNameSuffix:v9];

  v10 = [(BMNameComponents *)self nickname];
  [v3 setNickname:v10];

  return v3;
}

@end