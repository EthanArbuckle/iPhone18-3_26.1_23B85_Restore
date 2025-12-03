@interface MBDSMSToSuperParserContext
- (void)_addPart:(id)part;
@end

@implementation MBDSMSToSuperParserContext

- (void)_addPart:(id)part
{
  partCopy = part;
  if (partCopy)
  {
    orderedParts = self->_orderedParts;
    v8 = partCopy;
    if (!orderedParts)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = self->_orderedParts;
      self->_orderedParts = v6;

      orderedParts = self->_orderedParts;
    }

    [(NSMutableArray *)orderedParts addObject:v8];
  }

  _objc_release_x1();
}

@end