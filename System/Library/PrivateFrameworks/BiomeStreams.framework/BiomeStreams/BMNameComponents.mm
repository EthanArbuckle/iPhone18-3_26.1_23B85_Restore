@interface BMNameComponents
- (BMNameComponents)initWithNamePrefix:(id)prefix givenName:(id)name middleName:(id)middleName previousFamilyName:(id)familyName familyName:(id)a7 nameSuffix:(id)suffix nickname:(id)nickname;
- (BMNameComponents)initWithProto:(id)proto;
- (BMNameComponents)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMNameComponents

- (BMNameComponents)initWithNamePrefix:(id)prefix givenName:(id)name middleName:(id)middleName previousFamilyName:(id)familyName familyName:(id)a7 nameSuffix:(id)suffix nickname:(id)nickname
{
  prefixCopy = prefix;
  nameCopy = name;
  middleNameCopy = middleName;
  familyNameCopy = familyName;
  v21 = a7;
  suffixCopy = suffix;
  nicknameCopy = nickname;
  v26.receiver = self;
  v26.super_class = BMNameComponents;
  v18 = [(BMNameComponents *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_namePrefix, prefix);
    objc_storeStrong(&v19->_givenName, name);
    objc_storeStrong(&v19->_middleName, middleName);
    objc_storeStrong(&v19->_previousFamilyName, familyName);
    objc_storeStrong(&v19->_familyName, a7);
    objc_storeStrong(&v19->_nameSuffix, suffix);
    objc_storeStrong(&v19->_nickname, nickname);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    namePrefix = self->_namePrefix;
    namePrefix = [v5 namePrefix];
    if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:namePrefix target:namePrefix])
    {
      givenName = self->_givenName;
      givenName = [v5 givenName];
      if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:givenName target:givenName])
      {
        middleName = self->_middleName;
        middleName = [v5 middleName];
        if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:middleName target:middleName])
        {
          previousFamilyName = self->_previousFamilyName;
          previousFamilyName = [v5 previousFamilyName];
          if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:previousFamilyName target:previousFamilyName])
          {
            familyName = self->_familyName;
            familyName = [v5 familyName];
            if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:familyName target:?])
            {
              nameSuffix = self->_nameSuffix;
              nameSuffix = [v5 nameSuffix];
              if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:nameSuffix target:nameSuffix])
              {
                nickname = self->_nickname;
                nickname = [v5 nickname];
                v19 = [BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:nickname target:nickname];
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
  proto = [(BMNameComponents *)self proto];
  data = [proto data];

  return data;
}

- (BMNameComponents)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    namePrefix = [v5 namePrefix];
    givenName = [v5 givenName];
    middleName = [v5 middleName];
    previousFamilyName = [v5 previousFamilyName];
    familyName = [v5 familyName];
    nameSuffix = [v5 nameSuffix];
    nickname = [v5 nickname];

    self = [(BMNameComponents *)self initWithNamePrefix:namePrefix givenName:givenName middleName:middleName previousFamilyName:previousFamilyName familyName:familyName nameSuffix:nameSuffix nickname:nickname];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMNameComponents)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBNameComponents alloc] initWithData:dataCopy];

    self = [(BMNameComponents *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  namePrefix = [(BMNameComponents *)self namePrefix];
  [v3 setNamePrefix:namePrefix];

  givenName = [(BMNameComponents *)self givenName];
  [v3 setGivenName:givenName];

  middleName = [(BMNameComponents *)self middleName];
  [v3 setMiddleName:middleName];

  previousFamilyName = [(BMNameComponents *)self previousFamilyName];
  [v3 setPreviousFamilyName:previousFamilyName];

  familyName = [(BMNameComponents *)self familyName];
  [v3 setFamilyName:familyName];

  nameSuffix = [(BMNameComponents *)self nameSuffix];
  [v3 setNameSuffix:nameSuffix];

  nickname = [(BMNameComponents *)self nickname];
  [v3 setNickname:nickname];

  return v3;
}

@end