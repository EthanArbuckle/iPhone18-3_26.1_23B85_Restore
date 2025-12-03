@interface LocationDataModel
- (BOOL)shouldIncludeConferenceRoom:(id)room;
- (id)eventIDForSearchModel:(id)model;
- (void)locationSearchModel:(id)model selectedLocation:(id)location withError:(id)error;
- (void)locationSearchModel:(id)model updatedSearchTypes:(unint64_t)types;
@end

@implementation LocationDataModel

- (void)locationSearchModel:(id)model selectedLocation:(id)location withError:(id)error
{
  modelCopy = model;
  locationCopy = location;

  errorCopy = error;
  sub_1CAD1BE54(location);
}

- (void)locationSearchModel:(id)model updatedSearchTypes:(unint64_t)types
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  modelCopy = model;

  if ([modelCopy resultsPending])
  {
  }

  else
  {
    v10 = sub_1CAD4E304();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = self;
    sub_1CACA6D34(0, 0, v8, &unk_1CAD692D0, v11);
  }
}

- (id)eventIDForSearchModel:(id)model
{
  if (*&self->_anon_8[OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_eventID])
  {

    v3 = sub_1CAD4DF54();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldIncludeConferenceRoom:(id)room
{
  roomCopy = room;

  v4 = sub_1CAD106F4(roomCopy);

  return v4 & 1;
}

@end