@interface GDPersonEntityTagDirectFeedbackSet
- (GDPersonEntityTagDirectFeedbackSet)initWithFeedbackInference:(id)a3;
@end

@implementation GDPersonEntityTagDirectFeedbackSet

- (GDPersonEntityTagDirectFeedbackSet)initWithFeedbackInference:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDPersonEntityTagDirectFeedbackSet;
  v5 = [(GDPersonEntityTagDirectFeedbackSet *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v4, 0}];
    internalSet = v5->_internalSet;
    v5->_internalSet = v6;
  }

  return v5;
}

@end