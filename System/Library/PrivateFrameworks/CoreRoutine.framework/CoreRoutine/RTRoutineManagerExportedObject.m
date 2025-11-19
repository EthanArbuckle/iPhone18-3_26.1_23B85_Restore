@interface RTRoutineManagerExportedObject
- (RTRoutineManager)routineManager;
- (RTRoutineManagerExportedObject)initWithRoutineManager:(id)a3;
- (void)onDensityUpdate:(id)a3 error:(id)a4;
- (void)onLeechedLowConfidenceVisit:(id)a3 withError:(id)a4;
- (void)onLeechedVisit:(id)a3 withError:(id)a4;
- (void)onPlaceInferences:(id)a3 error:(id)a4;
- (void)onPredictedContextResult:(id)a3 error:(id)a4;
- (void)onRemoteStatusUpdate:(int64_t)a3 error:(id)a4;
- (void)onScenarioTrigger:(id)a3 withError:(id)a4;
- (void)onVehicleEvents:(id)a3 error:(id)a4;
- (void)onVisit:(id)a3 withError:(id)a4;
@end

@implementation RTRoutineManagerExportedObject

- (RTRoutineManagerExportedObject)initWithRoutineManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RTRoutineManagerExportedObject;
  v5 = [(RTRoutineManagerExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_routineManager, v4);
  }

  return v6;
}

- (void)onVisit:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__RTRoutineManagerExportedObject_onVisit_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __52__RTRoutineManagerExportedObject_onVisit_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onVisit:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onLeechedVisit:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__RTRoutineManagerExportedObject_onLeechedVisit_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __59__RTRoutineManagerExportedObject_onLeechedVisit_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onLeechedVisit:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onLeechedLowConfidenceVisit:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__RTRoutineManagerExportedObject_onLeechedLowConfidenceVisit_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __72__RTRoutineManagerExportedObject_onLeechedLowConfidenceVisit_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onLeechedLowConfidenceVisit:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onPlaceInferences:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__RTRoutineManagerExportedObject_onPlaceInferences_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __58__RTRoutineManagerExportedObject_onPlaceInferences_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onPlaceInferences:*(a1 + 40) error:*(a1 + 48)];
}

- (void)onScenarioTrigger:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__RTRoutineManagerExportedObject_onScenarioTrigger_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __62__RTRoutineManagerExportedObject_onScenarioTrigger_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onScenarioTrigger:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onVehicleEvents:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__RTRoutineManagerExportedObject_onVehicleEvents_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __56__RTRoutineManagerExportedObject_onVehicleEvents_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onVehicleEvents:*(a1 + 40) error:*(a1 + 48)];
}

- (void)onPredictedContextResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__RTRoutineManagerExportedObject_onPredictedContextResult_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __65__RTRoutineManagerExportedObject_onPredictedContextResult_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onPredictedContextResult:*(a1 + 40) error:*(a1 + 48)];
}

- (void)onRemoteStatusUpdate:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(RTRoutineManagerExportedObject *)self routineManager];
  v8 = [v7 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__RTRoutineManagerExportedObject_onRemoteStatusUpdate_error___block_invoke;
  block[3] = &unk_1E80B3DE0;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(v8, block);
}

void __61__RTRoutineManagerExportedObject_onRemoteStatusUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onRemoteStatusUpdate:*(a1 + 48) error:*(a1 + 40)];
}

- (void)onDensityUpdate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTRoutineManagerExportedObject *)self routineManager];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__RTRoutineManagerExportedObject_onDensityUpdate_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __56__RTRoutineManagerExportedObject_onDensityUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onDensityUpdate:*(a1 + 40) error:*(a1 + 48)];
}

- (RTRoutineManager)routineManager
{
  WeakRetained = objc_loadWeakRetained(&self->_routineManager);

  return WeakRetained;
}

@end