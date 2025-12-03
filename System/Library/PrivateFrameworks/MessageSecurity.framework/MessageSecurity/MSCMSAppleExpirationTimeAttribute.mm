@interface MSCMSAppleExpirationTimeAttribute
- (MSCMSAppleExpirationTimeAttribute)initWithAttribute:(id)attribute error:(id *)error;
- (MSCMSAppleExpirationTimeAttribute)initWithExpirationTime:(id)time;
- (id)encodeAttributeWithError:(id *)error;
@end

@implementation MSCMSAppleExpirationTimeAttribute

- (MSCMSAppleExpirationTimeAttribute)initWithAttribute:(id)attribute error:(id *)error
{
  attributeCopy = attribute;
  attributeType = [attributeCopy attributeType];
  v8 = [attributeType isEqualToString:@"1.2.840.113635.100.9.3"];

  if ((v8 & 1) == 0)
  {
    if (error)
    {
      v14 = MSErrorCMSDomain[0];
      v16 = *error;
      v17 = @"Not an Expiration Time attribute according to AttributeType";
      v15 = -26275;
      goto LABEL_10;
    }

LABEL_11:
    selfCopy = 0;
    goto LABEL_19;
  }

  attributeValues = [attributeCopy attributeValues];
  v10 = [attributeValues count];

  if (v10 != 1)
  {
    if (error)
    {
      v14 = MSErrorCMSDomain[0];
      v16 = *error;
      v17 = @"Expiration Time Attribute MUST have a single signed attribute value";
      v15 = -50;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v24 = 0;
  v25 = 0;
  attributeValues2 = [attributeCopy attributeValues];
  v12 = [attributeValues2 objectAtIndex:0];
  v13 = nsheim_decode_Time(v12);

  if (v13)
  {
    if (error)
    {
      v14 = MSErrorASN1Domain[0];
      v15 = v13;
      v16 = *error;
      v17 = @"unable to decode Expiration Time value";
LABEL_10:
      [MSError MSErrorWithDomain:v14 code:v15 underlyingError:v16 description:v17];
      *error = selfCopy = 0;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v23.receiver = self;
  v23.super_class = MSCMSAppleExpirationTimeAttribute;
  v19 = [(MSCMSAppleExpirationTimeAttribute *)&v23 init];
  if (v19)
  {
    if (v24 == 2 || v24 == 1)
    {
      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v25];
      expirationTime = v19->_expirationTime;
      v19->_expirationTime = v20;
    }

    else if (error)
    {
      *error = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-26275 underlyingError:*error description:@"invalid Time choice in Expiration Time"];
    }
  }

  free_Time();
  self = v19;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (MSCMSAppleExpirationTimeAttribute)initWithExpirationTime:(id)time
{
  timeCopy = time;
  v9.receiver = self;
  v9.super_class = MSCMSAppleExpirationTimeAttribute;
  v6 = [(MSCMSAppleExpirationTimeAttribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expirationTime, time);
  }

  return v7;
}

- (id)encodeAttributeWithError:(id *)error
{
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:-1609459200.0];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1546300800.0];
  if ([(NSDate *)self->_expirationTime compare:v5]== NSOrderedAscending || [(NSDate *)self->_expirationTime compare:v6]== NSOrderedDescending)
  {
    v17 = 3864;
    v7 = [MEMORY[0x277CBEB28] dataWithBytes:&v17 length:2];
    v8 = generalizedTimeStringFromDate(self->_expirationTime);
  }

  else
  {
    v16 = 3351;
    v7 = [MEMORY[0x277CBEB28] dataWithBytes:&v16 length:2];
    v8 = UTCStringFromDate(self->_expirationTime);
  }

  v9 = v8;
  v10 = [v8 dataUsingEncoding:4];
  [v7 appendData:v10];

  v11 = [MSCMSAttribute alloc];
  v12 = [MSOID OIDWithString:@"1.2.840.113635.100.9.3" error:error];
  v13 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  v14 = [(MSCMSAttribute *)v11 initWithAttributeType:v12 values:v13];

  return v14;
}

@end