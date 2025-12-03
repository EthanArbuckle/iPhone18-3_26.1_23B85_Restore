@interface NRDeviceDiffType
- (BOOL)isEqual:(id)equal;
- (NRDeviceDiffType)initWithCoder:(id)coder;
- (NRDeviceDiffType)initWithDiff:(id)diff andChangeType:(unint64_t)type;
- (NRDeviceDiffType)initWithProtobuf:(id)protobuf;
- (NRPBDeviceDiffType)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceDiffType

- (NRDeviceDiffType)initWithDiff:(id)diff andChangeType:(unint64_t)type
{
  diffCopy = diff;
  v8 = [(NRDeviceDiffType *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_diff, diff);
    v9->_changeType = type;
  }

  return v9;
}

- (NRDeviceDiffType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NRDeviceDiffType;
  v5 = [(NRDeviceDiffType *)&v13 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceDiff"];
    diff = v5->_diff;
    v5->_diff = v10;

    v5->_changeType = [coderCopy decodeIntegerForKey:@"changeType"];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDeviceDiffType alloc] initWithData:v6];
  v9 = [(NRDeviceDiffType *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (NRDeviceDiffType)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = NRDeviceDiffType;
  v5 = [(NRDeviceDiffType *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (!protobufCopy)
    {
      v5->_changeType = 0;
      v8 = [NRDeviceDiff alloc];
      v9 = 0;
      goto LABEL_7;
    }

    if ((protobufCopy[6] & 1) == 0)
    {
      v5->_changeType = 0;
LABEL_6:
      v8 = [NRDeviceDiff alloc];
      v9 = *(protobufCopy + 2);
LABEL_7:
      v10 = v9;
      v11 = [(NRDeviceDiff *)v8 initWithProtobuf:v10];
      diff = v6->_diff;
      v6->_diff = v11;

      goto LABEL_8;
    }

    v7 = protobufCopy[2];
    v5->_changeType = v7;
    if (v7 != 2)
    {
      goto LABEL_6;
    }
  }

LABEL_8:

  return v6;
}

- (NRPBDeviceDiffType)protobuf
{
  v3 = objc_opt_new();
  protobuf = [(NRDeviceDiff *)self->_diff protobuf];
  [(NRPBDeviceDiffType *)v3 setDiff:protobuf];

  if (v3)
  {
    changeType = self->_changeType;
    *(v3 + 24) |= 1u;
    *(v3 + 8) = changeType;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(NRDeviceDiffType *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NRDeviceDiffType allocWithZone:?]];
  objc_storeStrong(&v4->_diff, self->_diff);
  v4->_changeType = self->_changeType;
  return v4;
}

- (id)description
{
  diff = self->_diff;
  if (diff)
  {
    if (self->_changeType)
    {
      v3 = @"[UPDATED]";
    }

    else
    {
      v3 = @"[CREATED]";
    }

    v4 = v3;
    v5 = [(NRDeviceDiff *)diff description];
    v6 = [NRTextFormattingUtilities prefixLinesWithString:v4 withText:v5];
  }

  else
  {
    v6 = @"[DELETED]";
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (equalCopy == self)
  {
    v7 = 1;
    goto LABEL_12;
  }

  if (equalCopy)
  {
    v5 = equalCopy;
    if (self->_changeType == v5->_changeType)
    {
      diff = self->_diff;
      if (diff == v5->_diff)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(NRDeviceDiff *)diff isEqual:?];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_12:

  return v7;
}

@end