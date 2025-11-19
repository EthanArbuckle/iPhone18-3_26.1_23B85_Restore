@interface DDSupportFlowViewControllerDelegate
- (void)supportFlowViewControllerDidCancel:(id)a3;
- (void)supportFlowViewControllerDidStart:(id)a3;
@end

@implementation DDSupportFlowViewControllerDelegate

- (void)supportFlowViewControllerDidStart:(id)a3
{
  sub_21ABC66B4();
  sub_21ABC66A4();
  sub_21ABC6694();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)supportFlowViewControllerDidCancel:(id)a3
{
  sub_21ABC66B4();
  sub_21ABC66A4();
  sub_21ABC6694();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *self->_closeHandler;
  if (v4)
  {
    v5 = *&self->_closeHandler[8];

    v6 = sub_21ABBC674(v4);
    v4(v6);
    sub_21ABBC684(v4);
    v7 = *self->_closeHandler;
  }

  else
  {

    v7 = 0;
  }

  v8 = *&self->_closeHandler[8];
  *self->_closeHandler = 0;
  *&self->_closeHandler[8] = 0;
  sub_21ABBC684(v7);
}

@end