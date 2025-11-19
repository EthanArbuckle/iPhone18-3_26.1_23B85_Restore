@interface LocationDataModel
- (BOOL)shouldIncludeConferenceRoom:(id)a3;
- (id)eventIDForSearchModel:(id)a3;
- (void)locationSearchModel:(id)a3 selectedLocation:(id)a4 withError:(id)a5;
- (void)locationSearchModel:(id)a3 updatedSearchTypes:(unint64_t)a4;
@end

@implementation LocationDataModel

- (void)locationSearchModel:(id)a3 selectedLocation:(id)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a4;

  v9 = a5;
  sub_1CAD1BE54(a4);
}

- (void)locationSearchModel:(id)a3 updatedSearchTypes:(unint64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = a3;

  if ([v9 resultsPending])
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

- (id)eventIDForSearchModel:(id)a3
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

- (BOOL)shouldIncludeConferenceRoom:(id)a3
{
  v3 = a3;

  v4 = sub_1CAD106F4(v3);

  return v4 & 1;
}

@end