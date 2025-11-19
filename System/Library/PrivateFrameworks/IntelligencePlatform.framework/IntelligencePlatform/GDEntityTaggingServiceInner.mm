@interface GDEntityTaggingServiceInner
+ (id)tagNameWithGdTag:(int64_t)a3;
+ (int64_t)gdTagTypeWithName:(id)a3;
- (void)entitiesForTagWithGdEntityTagType:(int64_t)a3 options:(GDPersonEntityTaggingOptionsInner *)a4 completionHandler:(id)a5;
- (void)recordDirectFeedbackWithGradedTrue:(GDPersonEntityTagDirectFeedbackSet *)a3 gradedFalse:(GDPersonEntityTagDirectFeedbackSet *)a4 ignored:(GDPersonEntityTagDirectFeedbackSet *)a5 neverPresented:(GDPersonEntityTagDirectFeedbackSet *)a6 error:(id)a7;
- (void)recordStatefulFeedbackWithFeedback:(GDPersonEntityTaggingStatefulFeedback *)a3 error:(id)a4;
@end

@implementation GDEntityTaggingServiceInner

- (void)entitiesForTagWithGdEntityTagType:(int64_t)a3 options:(GDPersonEntityTaggingOptionsInner *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a4;
  v11 = self;

  sub_1ABAAFF38(&unk_1ABF4AAA8, v9);
}

+ (id)tagNameWithGdTag:(int64_t)a3
{
  static PersonEntityTaggingService.tagName(gdTag:)(a3);
  v3 = sub_1ABF23BD4();

  return v3;
}

+ (int64_t)gdTagTypeWithName:(id)a3
{
  sub_1ABF23C04();
  static PersonEntityTaggingService.gdTagType(name:)();
  v4 = v3;

  return v4;
}

- (void)recordStatefulFeedbackWithFeedback:(GDPersonEntityTaggingStatefulFeedback *)a3 error:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1ABAAFF38(&unk_1ABF4AA88, v7);
}

- (void)recordDirectFeedbackWithGradedTrue:(GDPersonEntityTagDirectFeedbackSet *)a3 gradedFalse:(GDPersonEntityTagDirectFeedbackSet *)a4 ignored:(GDPersonEntityTagDirectFeedbackSet *)a5 neverPresented:(GDPersonEntityTagDirectFeedbackSet *)a6 error:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = self;

  sub_1ABAAFF38(&unk_1ABF4AA38, v13);
}

@end