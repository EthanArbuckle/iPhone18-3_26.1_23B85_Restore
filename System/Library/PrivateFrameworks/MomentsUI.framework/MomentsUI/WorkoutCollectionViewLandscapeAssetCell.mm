@interface WorkoutCollectionViewLandscapeAssetCell
- (_TtC9MomentsUI39WorkoutCollectionViewLandscapeAssetCell)initWithCoder:(id)a3;
@end

@implementation WorkoutCollectionViewLandscapeAssetCell

- (_TtC9MomentsUI39WorkoutCollectionViewLandscapeAssetCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI39WorkoutCollectionViewLandscapeAssetCell_workoutView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableWorkoutViewModel.empty;
  v8 = 4;
  v6 = objc_allocWithZone(type metadata accessor for WorkoutView());
  *(&self->super.super.super.super.super.super.isa + v4) = WorkoutView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end