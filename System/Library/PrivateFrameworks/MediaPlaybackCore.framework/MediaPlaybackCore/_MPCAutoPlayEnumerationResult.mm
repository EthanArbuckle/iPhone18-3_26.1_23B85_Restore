@interface _MPCAutoPlayEnumerationResult
- (_MPCAutoPlayEnumerationResult)initWithSectionIdentifier:(id)a3;
@end

@implementation _MPCAutoPlayEnumerationResult

- (_MPCAutoPlayEnumerationResult)initWithSectionIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MPCAutoPlayEnumerationResult;
  v5 = [(_MPCAutoPlayEnumerationResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v6;
  }

  return v5;
}

@end