@interface _MPCAutoPlayEnumerationResult
- (_MPCAutoPlayEnumerationResult)initWithSectionIdentifier:(id)identifier;
@end

@implementation _MPCAutoPlayEnumerationResult

- (_MPCAutoPlayEnumerationResult)initWithSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _MPCAutoPlayEnumerationResult;
  v5 = [(_MPCAutoPlayEnumerationResult *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v6;
  }

  return v5;
}

@end