@interface MBDSMSToSuperParserContext
- (void)_addPart:(id)a3;
@end

@implementation MBDSMSToSuperParserContext

- (void)_addPart:(id)a3
{
  v4 = a3;
  if (v4)
  {
    orderedParts = self->_orderedParts;
    v8 = v4;
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