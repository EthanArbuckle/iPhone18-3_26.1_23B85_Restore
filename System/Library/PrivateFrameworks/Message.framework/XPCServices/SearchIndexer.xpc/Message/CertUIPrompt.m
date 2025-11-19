@interface CertUIPrompt
- (void)setHost:(id)a3;
- (void)setService:(id)a3;
- (void)showPromptWithOptions:(id)a3 responseBlock:(id)a4;
@end

@implementation CertUIPrompt

- (void)setHost:(id)a3
{
  if (a3)
  {
    sub_1004A5764();
    v4 = *self->_setHostname;
    v5 = *self->underlying;

    v6 = sub_1004A5734();
  }

  else
  {
    v4 = *self->_setHostname;
    v5 = *self->underlying;

    v6 = 0;
  }

  v4(v5, "setHost:", v6);
}

- (void)setService:(id)a3
{
  if (a3)
  {
    sub_1004A5764();
    v4 = *self->_setService;
    v5 = *self->underlying;

    v6 = sub_1004A5734();
  }

  else
  {
    v4 = *self->_setService;
    v5 = *self->underlying;

    v6 = 0;
  }

  v4(v5, "setService:", v6);
}

- (void)showPromptWithOptions:(id)a3 responseBlock:(id)a4
{
  v5 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_1004A5514();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1002506B0(a3, sub_100250C98, v6);
}

@end