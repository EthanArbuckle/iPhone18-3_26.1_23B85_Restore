@interface _EARLatticeMitigatorResult
- (_EARLatticeMitigatorResult)initWithVersion:(id)version score:(float)score threshold:(float)threshold calibrationScale:(float)scale calibrationOffset:(float)offset processed:(BOOL)processed;
@end

@implementation _EARLatticeMitigatorResult

- (_EARLatticeMitigatorResult)initWithVersion:(id)version score:(float)score threshold:(float)threshold calibrationScale:(float)scale calibrationOffset:(float)offset processed:(BOOL)processed
{
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = _EARLatticeMitigatorResult;
  v15 = [(_EARLatticeMitigatorResult *)&v19 init];
  if (v15)
  {
    v16 = [versionCopy copy];
    version = v15->_version;
    v15->_version = v16;

    v15->_score = score;
    v15->_threshold = threshold;
    v15->_calibrationScale = scale;
    v15->_calibrationOffset = offset;
    v15->_processed = processed;
  }

  return v15;
}

@end