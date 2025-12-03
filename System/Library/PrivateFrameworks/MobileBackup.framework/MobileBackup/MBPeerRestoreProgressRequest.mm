@interface MBPeerRestoreProgressRequest
- (MBPeerRestoreProgressRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (MBPeerRestoreProgressRequest)initWithPercentage:(unint64_t)percentage;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerRestoreProgressRequest

- (MBPeerRestoreProgressRequest)initWithPercentage:(unint64_t)percentage
{
  v5.receiver = self;
  v5.super_class = MBPeerRestoreProgressRequest;
  result = [(MBPeerRestoreProgressRequest *)&v5 init];
  if (result)
  {
    result->_percentage = percentage;
  }

  return result;
}

- (MBPeerRestoreProgressRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MBPeerRestoreProgressRequest;
  v7 = [(MBPeerRestoreProgressRequest *)&v12 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"MBPercentage"];
  if (v8)
  {
    v9 = v8;
    v7->_percentage = [v8 unsignedIntegerValue];

LABEL_4:
    v10 = v7;
    goto LABEL_5;
  }

  if (error)
  {
    [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", dictionaryCopy];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_5:

  return v10;
}

- (id)dictionaryRepresentation
{
  v5 = @"MBPercentage";
  v2 = [NSNumber numberWithUnsignedInteger:[(MBPeerRestoreProgressRequest *)self percentage]];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

@end