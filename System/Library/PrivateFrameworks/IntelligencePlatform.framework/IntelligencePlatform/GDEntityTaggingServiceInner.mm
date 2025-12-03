@interface GDEntityTaggingServiceInner
+ (id)tagNameWithGdTag:(int64_t)tag;
+ (int64_t)gdTagTypeWithName:(id)name;
- (void)entitiesForTagWithGdEntityTagType:(int64_t)type options:(GDPersonEntityTaggingOptionsInner *)options completionHandler:(id)handler;
- (void)recordDirectFeedbackWithGradedTrue:(GDPersonEntityTagDirectFeedbackSet *)true gradedFalse:(GDPersonEntityTagDirectFeedbackSet *)false ignored:(GDPersonEntityTagDirectFeedbackSet *)ignored neverPresented:(GDPersonEntityTagDirectFeedbackSet *)presented error:(id)error;
- (void)recordStatefulFeedbackWithFeedback:(GDPersonEntityTaggingStatefulFeedback *)feedback error:(id)error;
@end

@implementation GDEntityTaggingServiceInner

- (void)entitiesForTagWithGdEntityTagType:(int64_t)type options:(GDPersonEntityTaggingOptionsInner *)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = type;
  v9[3] = options;
  v9[4] = v8;
  v9[5] = self;
  optionsCopy = options;
  selfCopy = self;

  sub_1ABAAFF38(&unk_1ABF4AAA8, v9);
}

+ (id)tagNameWithGdTag:(int64_t)tag
{
  static PersonEntityTaggingService.tagName(gdTag:)(tag);
  v3 = sub_1ABF23BD4();

  return v3;
}

+ (int64_t)gdTagTypeWithName:(id)name
{
  sub_1ABF23C04();
  static PersonEntityTaggingService.gdTagType(name:)();
  v4 = v3;

  return v4;
}

- (void)recordStatefulFeedbackWithFeedback:(GDPersonEntityTaggingStatefulFeedback *)feedback error:(id)error
{
  v6 = _Block_copy(error);
  v7 = swift_allocObject();
  v7[2] = feedback;
  v7[3] = v6;
  v7[4] = self;
  feedbackCopy = feedback;
  selfCopy = self;

  sub_1ABAAFF38(&unk_1ABF4AA88, v7);
}

- (void)recordDirectFeedbackWithGradedTrue:(GDPersonEntityTagDirectFeedbackSet *)true gradedFalse:(GDPersonEntityTagDirectFeedbackSet *)false ignored:(GDPersonEntityTagDirectFeedbackSet *)ignored neverPresented:(GDPersonEntityTagDirectFeedbackSet *)presented error:(id)error
{
  v12 = _Block_copy(error);
  v13 = swift_allocObject();
  v13[2] = true;
  v13[3] = false;
  v13[4] = ignored;
  v13[5] = presented;
  v13[6] = v12;
  v13[7] = self;
  trueCopy = true;
  falseCopy = false;
  ignoredCopy = ignored;
  presentedCopy = presented;
  selfCopy = self;

  sub_1ABAAFF38(&unk_1ABF4AA38, v13);
}

@end