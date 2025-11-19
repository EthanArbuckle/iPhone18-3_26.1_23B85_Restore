@interface _SwiftDiagnosticPatternMatching
- (BOOL)isPatternPayloadAvailable;
- (BOOL)lookForPattern:(id)a3;
- (_SwiftDiagnosticPatternMatching)init;
- (void)lookForPatternAsync:(id)a3 :(id)a4;
@end

@implementation _SwiftDiagnosticPatternMatching

- (BOOL)isPatternPayloadAvailable
{
  sub_1D981A480(self + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, v16, &qword_1ECB41608, &qword_1D984C090);
  v3 = v17;
  if (v17)
  {
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = &v15;
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v9 = &v16[-1] - v8;
    v10 = *(v4 + 40);
    v11 = self;
    v10(v3, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);

    (*(v6 + 8))(v9, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    sub_1D981A4E8(v16, &qword_1ECB41608, &qword_1D984C090);
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)lookForPattern:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = DiagnosticPatternMatching.lookForPattern(report:)(v4);

  return self & 1;
}

- (void)lookForPatternAsync:(id)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1D981ACA4(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_SwiftDiagnosticPatternMatching)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end