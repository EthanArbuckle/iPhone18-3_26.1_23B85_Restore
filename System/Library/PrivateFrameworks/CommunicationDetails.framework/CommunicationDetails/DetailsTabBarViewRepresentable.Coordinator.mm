@interface DetailsTabBarViewRepresentable.Coordinator
- (void)selectedTabDidChange:(id)change;
@end

@implementation DetailsTabBarViewRepresentable.Coordinator

- (void)selectedTabDidChange:(id)change
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & *change) + 0x100);
  changeCopy = change;

  v5(v10, v7);
  v8 = v10[0];
  v9 = v10[1];
  (*self->onTabChange)(v10);

  outlined consume of DetailsTab?(v8, v9);
}

@end