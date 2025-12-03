@interface CertUIPrompt
- (void)setHost:(id)host;
- (void)setService:(id)service;
- (void)showPromptWithOptions:(id)options responseBlock:(id)block;
@end

@implementation CertUIPrompt

- (void)setHost:(id)host
{
  if (host)
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

- (void)setService:(id)service
{
  if (service)
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

- (void)showPromptWithOptions:(id)options responseBlock:(id)block
{
  v5 = _Block_copy(block);
  if (options)
  {
    options = sub_1004A5514();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1002506B0(options, sub_100250C98, v6);
}

@end