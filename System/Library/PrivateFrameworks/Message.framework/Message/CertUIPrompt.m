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
    sub_1B0E44AD8();
    v4 = *self->_setHostname;
    v5 = *self->underlying;

    v6 = sub_1B0E44AC8();
  }

  else
  {
    v4 = *self->_setHostname;
    v5 = *self->underlying;

    v6 = 0;
  }

  v4(v5, sel_setHost_, v6);
}

- (void)setService:(id)a3
{
  if (a3)
  {
    sub_1B0E44AD8();
    v4 = *self->_setService;
    v5 = *self->underlying;

    v6 = sub_1B0E44AC8();
  }

  else
  {
    v4 = *self->_setService;
    v5 = *self->underlying;

    v6 = 0;
  }

  v4(v5, sel_setService_, v6);
}

- (void)showPromptWithOptions:(id)a3 responseBlock:(id)a4
{
  v5 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_1B0E445A8();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1B0C5CB24(a3, sub_1B0C5D0D4, v6);
}

@end