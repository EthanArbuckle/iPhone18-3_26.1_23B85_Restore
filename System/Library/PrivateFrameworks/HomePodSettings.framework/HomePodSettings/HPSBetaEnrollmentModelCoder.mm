@interface HPSBetaEnrollmentModelCoder
- (BOOL)deserialize:(id)a3 withElement:(id)a4 error:(id *)a5;
- (id)serialize:(id)a3 error:(id *)a4;
@end

@implementation HPSBetaEnrollmentModelCoder

- (BOOL)deserialize:(id)a3 withElement:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_2543A1EF8();
  v12 = v11;

  sub_254311378(v10, v12, v8);
  sub_2542D7D40(v10, v12);
  return 1;
}

- (id)serialize:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_254311660(v5);
  v9 = v8;

  v10 = sub_2543A1EC8();
  sub_2542D7D40(v7, v9);

  return v10;
}

@end