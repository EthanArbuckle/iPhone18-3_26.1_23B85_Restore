@interface MBPeerRestoreProgressRequest
- (MBPeerRestoreProgressRequest)initWithDictionary:(id)a3 error:(id *)a4;
- (MBPeerRestoreProgressRequest)initWithPercentage:(unint64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerRestoreProgressRequest

- (MBPeerRestoreProgressRequest)initWithPercentage:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MBPeerRestoreProgressRequest;
  result = [(MBPeerRestoreProgressRequest *)&v5 init];
  if (result)
  {
    result->_percentage = a3;
  }

  return result;
}

- (MBPeerRestoreProgressRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MBPeerRestoreProgressRequest;
  v7 = [(MBPeerRestoreProgressRequest *)&v12 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v6 objectForKeyedSubscript:@"MBPercentage"];
  if (v8)
  {
    v9 = v8;
    v7->_percentage = [v8 unsignedIntegerValue];

LABEL_4:
    v10 = v7;
    goto LABEL_5;
  }

  if (a4)
  {
    [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", v6];
    *a4 = v10 = 0;
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