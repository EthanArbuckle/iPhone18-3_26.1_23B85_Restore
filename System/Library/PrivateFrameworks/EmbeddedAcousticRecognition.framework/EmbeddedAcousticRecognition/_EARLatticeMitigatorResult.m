@interface _EARLatticeMitigatorResult
- (_EARLatticeMitigatorResult)initWithVersion:(id)a3 score:(float)a4 threshold:(float)a5 calibrationScale:(float)a6 calibrationOffset:(float)a7 processed:(BOOL)a8;
@end

@implementation _EARLatticeMitigatorResult

- (_EARLatticeMitigatorResult)initWithVersion:(id)a3 score:(float)a4 threshold:(float)a5 calibrationScale:(float)a6 calibrationOffset:(float)a7 processed:(BOOL)a8
{
  v14 = a3;
  v19.receiver = self;
  v19.super_class = _EARLatticeMitigatorResult;
  v15 = [(_EARLatticeMitigatorResult *)&v19 init];
  if (v15)
  {
    v16 = [v14 copy];
    version = v15->_version;
    v15->_version = v16;

    v15->_score = a4;
    v15->_threshold = a5;
    v15->_calibrationScale = a6;
    v15->_calibrationOffset = a7;
    v15->_processed = a8;
  }

  return v15;
}

@end