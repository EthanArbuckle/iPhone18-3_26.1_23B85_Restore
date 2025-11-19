@interface NRDevicePropertyDiffType
- (BOOL)isEqual:(id)a3;
- (NRDevicePropertyDiffType)initWithCoder:(id)a3;
- (NRDevicePropertyDiffType)initWithDiff:(id)a3 andChangeType:(unint64_t)a4;
- (NRDevicePropertyDiffType)initWithProtobuf:(id)a3;
- (NRPBDevicePropertyDiffType)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDevicePropertyDiffType

- (NRDevicePropertyDiffType)initWithDiff:(id)a3 andChangeType:(unint64_t)a4
{
  v7 = a3;
  v8 = [(NRDevicePropertyDiffType *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_diff, a3);
    v9->_changeType = a4;
  }

  return v9;
}

- (NRDevicePropertyDiffType)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NRDevicePropertyDiffType;
  v5 = [(NRDevicePropertyDiffType *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
      v5->_changeType = 0;
      v8 = [NRDevicePropertyDiff alloc];
      v9 = 0;
      goto LABEL_7;
    }

    if ((v4[6] & 1) == 0)
    {
      v5->_changeType = 0;
LABEL_6:
      v8 = [NRDevicePropertyDiff alloc];
      v9 = *(v4 + 2);
LABEL_7:
      v10 = v9;
      v11 = [(NRDevicePropertyDiff *)v8 initWithProtobuf:v10];
      diff = v6->_diff;
      v6->_diff = v11;

      goto LABEL_8;
    }

    v7 = v4[2];
    v5->_changeType = v7;
    if (v7 != 2)
    {
      goto LABEL_6;
    }
  }

LABEL_8:

  return v6;
}

- (NRPBDevicePropertyDiffType)protobuf
{
  v3 = objc_opt_new();
  v4 = [(NRDevicePropertyDiff *)self->_diff protobuf];
  [(NRPBDevicePropertyDiffType *)v3 setDiff:v4];

  if (v3)
  {
    changeType = self->_changeType;
    *(v3 + 24) |= 1u;
    *(v3 + 8) = changeType;
  }

  return v3;
}

- (NRDevicePropertyDiffType)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NRDevicePropertyDiffType;
  v5 = [(NRDevicePropertyDiffType *)&v13 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyDiff"];
    diff = v5->_diff;
    v5->_diff = v10;

    v5->_changeType = [v4 decodeIntegerForKey:@"changeType"];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDevicePropertyDiffType alloc] initWithData:v6];
  v9 = [(NRDevicePropertyDiffType *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NRDevicePropertyDiffType *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NRDevicePropertyDiffType allocWithZone:?]];
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
    v5 = [(NRDevicePropertyDiff *)diff description];
    v6 = [NRTextFormattingUtilities prefixLinesWithString:v4 withText:v5];
  }

  else
  {
    v6 = @"[DELETED]";
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v4 == self)
  {
    v7 = 1;
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v4;
    if (self->_changeType == v5->_changeType)
    {
      diff = self->_diff;
      if (diff | v5->_diff)
      {
        v7 = [(NRDevicePropertyDiff *)diff isEqual:?];
      }

      else
      {
        v7 = 1;
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