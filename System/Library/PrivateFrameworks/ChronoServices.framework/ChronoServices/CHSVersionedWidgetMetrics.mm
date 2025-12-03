@interface CHSVersionedWidgetMetrics
- (BOOL)isEqual:(id)equal;
- (CHSVersionedWidgetMetrics)initWithMetrics:(id)metrics version:(unint64_t)version;
- (CHSVersionedWidgetMetrics)priorVersionedWidgetMetrics;
- (id)_stringKeyRepresentation;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation CHSVersionedWidgetMetrics

- (CHSVersionedWidgetMetrics)priorVersionedWidgetMetrics
{
  filenameVersion = self->_filenameVersion;
  if (filenameVersion == 1)
  {
    dawnburstVersionedWidgetMetrics = 0;
  }

  else
  {
    if (filenameVersion == 2)
    {
      dawnburstVersionedWidgetMetrics = [(CHSWidgetMetrics *)self dawnburstVersionedWidgetMetrics];
    }

    else if (filenameVersion == 3)
    {
      dawnburstVersionedWidgetMetrics = [(CHSWidgetMetrics *)self crystalglowVersionedWidgetMetrics];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:@"CHSVersionedWidgetMetricsError" reason:@"Invalid version" userInfo:{&unk_1F0A7A158, v2}];
      dawnburstVersionedWidgetMetrics = 0;
    }
  }

  return dawnburstVersionedWidgetMetrics;
}

- (CHSVersionedWidgetMetrics)initWithMetrics:(id)metrics version:(unint64_t)version
{
  metricsCopy = metrics;
  v7 = metricsCopy;
  if (version - 1 >= 3)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:@"CHSVersionedWidgetMetricsError" reason:@"Invalid version" userInfo:&unk_1F0A7A180];
    selfCopy = 0;
  }

  else
  {
    [metricsCopy size];
    v9 = v8;
    v11 = v10;
    [v7 cornerRadius];
    v13 = v12;
    [v7 scaleFactor];
    v15 = v14;
    fontStyle = [v7 fontStyle];
    margins = [v7 margins];
    dynamicTextSupport = [v7 dynamicTextSupport];
    groupMargins = [v7 groupMargins];
    nestedContentMetrics = [v7 nestedContentMetrics];
    v25.receiver = self;
    v25.super_class = CHSVersionedWidgetMetrics;
    v21 = [(CHSWidgetMetrics *)&v25 initWithSize:fontStyle cornerRadius:margins scaleFactor:dynamicTextSupport fontStyle:groupMargins margins:nestedContentMetrics supportsDynamicText:v9 widgetGroupMargins:v11 nestedContentMetrics:v13, v15];

    if (v21)
    {
      v21->_filenameVersion = version;
    }

    self = v21;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_stringKeyRepresentation
{
  filenameVersion = self->_filenameVersion;
  switch(filenameVersion)
  {
    case 1uLL:
      _dawnStringKeyRepresentation = [(CHSWidgetMetrics *)self _dawnStringKeyRepresentation];
      break;
    case 2uLL:
      _dawnStringKeyRepresentation = [(CHSWidgetMetrics *)self _crystalStringKeyRepresentation];
      break;
    case 3uLL:
      _dawnStringKeyRepresentation = [(CHSWidgetMetrics *)self _luckStringKeyRepresentation];
      break;
    default:
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"CHSVersionedWidgetMetricsError" reason:@"Invalid version" userInfo:&unk_1F0A7A1A8];
      _dawnStringKeyRepresentation = 0;
      break;
  }

  return _dawnStringKeyRepresentation;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = CHSVersionedWidgetMetrics;
  v3 = [(CHSWidgetMetrics *)&v9 hash];
  builder = [MEMORY[0x1E698E6B8] builder];
  v5 = [builder appendUnsignedInteger:v3];
  v6 = [builder appendUnsignedInteger:self->_filenameVersion];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v7.receiver = self;
  v7.super_class = CHSVersionedWidgetMetrics;
  v5 = [(CHSWidgetMetrics *)&v7 compare:compareCopy];
  if (!v5)
  {
    if (self->_filenameVersion < compareCopy[10])
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