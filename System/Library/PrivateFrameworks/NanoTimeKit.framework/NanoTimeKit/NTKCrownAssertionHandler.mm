@interface NTKCrownAssertionHandler
- (BOOL)relinquishCrownAssertionForToken:(id)a3;
- (NTKCrownAssertionHandler)init;
- (id)takeCrownAssertionForToken:(id)a3;
@end

@implementation NTKCrownAssertionHandler

- (id)takeCrownAssertionForToken:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v9 = &v19 - v8;
  v10 = sub_22DCB5B3C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_22DCB5B1C();
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  v16 = self;
  sub_22DC9759C(v9, v15);

  sub_22DC97890(v9);
  v17 = sub_22DCB5AFC();
  (*(v11 + 8))(v15, v10);

  return v17;
}

- (BOOL)relinquishCrownAssertionForToken:(id)a3
{
  v3 = sub_22DCB5B3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DCB5B1C();
  v9 = sub_22DC99A6C(v8);
  (*(v4 + 8))(v8, v3);
  return v9 & 1;
}

- (NTKCrownAssertionHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CrownAssertionHandler();
  return [(NTKCrownAssertionHandler *)&v3 init];
}

@end