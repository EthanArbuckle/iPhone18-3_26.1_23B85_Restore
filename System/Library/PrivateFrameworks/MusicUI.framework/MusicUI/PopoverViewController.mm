@interface PopoverViewController
- (_TtC7MusicUI21PopoverViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7MusicUI21PopoverViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
@end

@implementation PopoverViewController

- (_TtC7MusicUI21PopoverViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  requestCopy = request;
  swift_unknownObjectRetain();
  accountCopy = account;
  sub_216DF2F84();
}

- (_TtC7MusicUI21PopoverViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21700E514();
  }

  bundleCopy = bundle;
  sub_216DF2FE0();
}

@end