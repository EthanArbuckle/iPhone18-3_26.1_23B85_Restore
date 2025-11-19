@interface __JUObjCFunctions
+ (id)makeContentUnavailableViewControllerWithError:(id)a3 retryAction:(id)a4;
+ (id)makeLoadingViewControllerWithLabel:(id)a3;
+ (id)traitCollectionForScreen:(id)a3;
- (__JUObjCFunctions)init;
@end

@implementation __JUObjCFunctions

+ (id)traitCollectionForScreen:(id)a3
{
  v3 = [a3 traitCollection];

  return v3;
}

- (__JUObjCFunctions)init
{
  result = sub_1BAD9D8B8();
  __break(1u);
  return result;
}

+ (id)makeLoadingViewControllerWithLabel:(id)a3
{
  v4 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v8 = v5;
    v9 = sub_1BAD9CF68();
    v5 = v8;
    a3 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (qword_1EDBA5E60 != -1)
  {
    v17 = v5;
    swift_once();
    v5 = v17;
  }

  v11 = __swift_project_value_buffer(v5, qword_1EDBA5C38);
  sub_1BAD05B04(v11, v7);
  v12 = type metadata accessor for JULoadingViewController(0);
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v14 = v9;
  v14[1] = a3;
  sub_1BAD05B04(v7, &v13[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v13[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = 0;
  v18.receiver = v13;
  v18.super_class = v12;

  v15 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD05D10(v7);

  return v15;
}

+ (id)makeContentUnavailableViewControllerWithError:(id)a3 retryAction:(id)a4
{
  v6 = type metadata accessor for JUContentUnavailableViewController.PresentationContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a4);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_1BAD76F1C;
  }

  else
  {
    v10 = 0;
  }

  v11 = qword_1EDBA5A60;
  v12 = a3;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EBC29A38);
  sub_1BAD7567C(v13, v8);
  v14 = type metadata accessor for JUContentUnavailableViewController(0);
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_error] = v12;
  sub_1BAD7567C(v8, &v15[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_presentationContext]);
  v16 = &v15[OBJC_IVAR____TtC5JetUI34JUContentUnavailableViewController_retry];
  *v16 = v9;
  *(v16 + 1) = v10;
  v17 = v12;
  sub_1BAD31584(v9);
  v20.receiver = v15;
  v20.super_class = v14;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD759A4(v8);
  sub_1BAD17DC0(v9);

  return v18;
}

@end