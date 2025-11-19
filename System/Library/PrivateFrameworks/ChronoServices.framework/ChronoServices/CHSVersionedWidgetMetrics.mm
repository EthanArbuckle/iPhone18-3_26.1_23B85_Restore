@interface CHSVersionedWidgetMetrics
- (BOOL)isEqual:(id)a3;
- (CHSVersionedWidgetMetrics)initWithMetrics:(id)a3 version:(unint64_t)a4;
- (CHSVersionedWidgetMetrics)priorVersionedWidgetMetrics;
- (id)_stringKeyRepresentation;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation CHSVersionedWidgetMetrics

- (CHSVersionedWidgetMetrics)priorVersionedWidgetMetrics
{
  filenameVersion = self->_filenameVersion;
  if (filenameVersion == 1)
  {
    v5 = 0;
  }

  else
  {
    if (filenameVersion == 2)
    {
      v5 = [(CHSWidgetMetrics *)self dawnburstVersionedWidgetMetrics];
    }

    else if (filenameVersion == 3)
    {
      v5 = [(CHSWidgetMetrics *)self crystalglowVersionedWidgetMetrics];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:@"CHSVersionedWidgetMetricsError" reason:@"Invalid version" userInfo:{&unk_1F0A7A158, v2}];
      v5 = 0;
    }
  }

  return v5;
}

- (CHSVersionedWidgetMetrics)initWithMetrics:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 - 1 >= 3)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:@"CHSVersionedWidgetMetricsError" reason:@"Invalid version" userInfo:&unk_1F0A7A180];
    v22 = 0;
  }

  else
  {
    [v6 size];
    v9 = v8;
    v11 = v10;
    [v7 cornerRadius];
    v13 = v12;
    [v7 scaleFactor];
    v15 = v14;
    v16 = [v7 fontStyle];
    v17 = [v7 margins];
    v18 = [v7 dynamicTextSupport];
    v19 = [v7 groupMargins];
    v20 = [v7 nestedContentMetrics];
    v25.receiver = self;
    v25.super_class = CHSVersionedWidgetMetrics;
    v21 = [(CHSWidgetMetrics *)&v25 initWithSize:v16 cornerRadius:v17 scaleFactor:v18 fontStyle:v19 margins:v20 supportsDynamicText:v9 widgetGroupMargins:v11 nestedContentMetrics:v13, v15];

    if (v21)
    {
      v21->_filenameVersion = a4;
    }

    self = v21;
    v22 = self;
  }

  return v22;
}

- (id)_stringKeyRepresentation
{
  filenameVersion = self->_filenameVersion;
  switch(filenameVersion)
  {
    case 1uLL:
      v3 = [(CHSWidgetMetrics *)self _dawnStringKeyRepresentation];
      break;
    case 2uLL:
      v3 = [(CHSWidgetMetrics *)self _crystalStringKeyRepresentation];
      break;
    case 3uLL:
      v3 = [(CHSWidgetMetrics *)self _luckStringKeyRepresentation];
      break;
    default:
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"CHSVersionedWidgetMetricsError" reason:@"Invalid version" userInfo:&unk_1F0A7A1A8];
      v3 = 0;
      break;
  }

  return v3;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = CHSVersionedWidgetMetrics;
  v3 = [(CHSWidgetMetrics *)&v9 hash];
  v4 = [MEMORY[0x1E698E6B8] builder];
  v5 = [v4 appendUnsignedInteger:v3];
  v6 = [v4 appendUnsignedInteger:self->_filenameVersion];
  v7 = [v4 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && self->_filenameVersion == v8[10])
  {
    v11.receiver = self;
    v11.super_class = CHSVersionedWidgetMetrics;
    v9 = [(CHSWidgetMetrics *)&v11 isEqual:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CHSVersionedWidgetMetrics;
  v5 = [(CHSWidgetMetrics *)&v7 compare:v4];
  if (!v5)
  {
    if (self->_filenameVersion < v4[10])
    {
      v5 = -1;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

@end