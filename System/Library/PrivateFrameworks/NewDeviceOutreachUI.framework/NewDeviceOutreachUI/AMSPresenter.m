@interface AMSPresenter
- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3;
- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3 params:(id)a4;
@end

@implementation AMSPresenter

- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3
{
  v5 = *self->onFinish;
  v4 = *&self->onFinish[8];

  v5(a3, 0);
}

- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3 params:(id)a4
{
  if (a4)
  {
    v6 = sub_25BDDFE08();
  }

  else
  {
    v6 = 0;
  }

  v8 = *self->onFinish;
  v7 = *&self->onFinish[8];

  v8(a3, v6);
}

@end